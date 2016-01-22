class PrejobsController < ApplicationController
  def index
    @complete_jobs = Prejob.where(complete: true)
    @incomplete_jobs = Prejob.where(complete: false)
  end

  def show
    @job = Prejob.find params[:id]
  end

  def new
    @job = Prejob.new
  end

  def create
    @job = Prejob.new prejob_params
    if @job.save
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

  private
  def prejob_params
    params.require(:prejob).permit :name
  end
end
