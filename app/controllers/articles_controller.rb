class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy, :show]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  
  def index
    @articles = Article.paginate(page: params[:page], per_page: 2) #.where(created_at: :desc)
  end
  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new article_params
    @article.user = current_user
    if @article.save 
      flash[:success] = "Added successfully"
      redirect_to article_path(@article)
    else
      render :new
    end  
  end

  def show
    if request.path != article_path(@article)
      redirect_to @article, status: :moved_permanently
    end
  end

  def edit
  end

  def update
    if @article.update article_params
      flash[:success] = "Updated"
      redirect_to article_path @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    flash[:notice] = "Article deleted"
    redirect_to articles_path

  end

  private
  def article_params
    params.require(:article).permit :title, :description, category_ids: []
  end

  def set_article
    @article = Article.friendly.find params[:id]
  end

  def require_same_user
    if current_user != @article.user and !current_user.admin?
      flash[:notice] = "You can only edit/delete your own article"
      redirect_to root_path
    end
  end
end
