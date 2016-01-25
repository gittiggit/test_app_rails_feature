class PrejobsController < ApplicationController
  def index
    @complete_tasks = Prejob.where(complete: true)
    @incomplete_tasks = Prejob.where(complete: false)
  end

  def show
    @job = Prejob.find params[:id]
  end

  def new
    @job = Prejob.new
  end

  def create
    @prejob = Prejob.new prejob_params
    if @prejob.save
      respond_to do |format|
        format.html {redirect_to prejobs_path}
        format.js
      end
    end
    # if @job.save
    #   flash[:success] = "Created successfully"
    #   redirect_to prejobs_path
    # else
    #   render :new
    # end
  end

  def edit
    @job = Prejob.find params[:id]
  end

  def update
    @job = Prejob.find params[:id]
    if @job.update prejob_params
      flash[:success] = "Updated"
      redirect_to @job
    else
      render :edit
    end
  end

  def destroy
    @job = Prejob.find params[:id]
    @job.destroy
    # flash[:notice] = "Deleted"
    # redirect_to prejobs_path
    respond_to do |format|
      format.html {redirect_to prejobs_path}
      format.js
    end
  end

  private
  def prejob_params
    params.require(:prejob).permit :name
  end
end
