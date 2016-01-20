class ExperimentsController < ApplicationController

  def create
    @experiment = Experiment.new experiment_params
    if @experiment.save
      flash[:success] = "Created successfully"
      redirect_to tasks_path
    else
      render :back
    end
  end
  
  private
  def experiment_params
    params.require(:experiment).permit(:name)
  end
end
