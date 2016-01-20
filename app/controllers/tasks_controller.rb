class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find params[:id]
    @test = Test.new
  end

  def edit
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    if @task.save
      flash[:success] = "Task created success fully"
      redirect_to tasks_path
    else
      render :new
    end
  end

  private
  def task_params
    params.require(:task).permit :name
  end
end
