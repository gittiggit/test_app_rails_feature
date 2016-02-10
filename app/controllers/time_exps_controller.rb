class TimeExpsController < ApplicationController
  def index

  end

  def new
    @time_exp = TimeExp.new
  end

  def create
     @time_exp = TimeExp.new timeexp_params
    if @time_exp.save
      flash[:success] = "Created"
      redirect_to time_exps_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private
  def timeexp_params
    params.require(:time_exp).permit :date1, :date2, :start_time, :end_time
  end
end
