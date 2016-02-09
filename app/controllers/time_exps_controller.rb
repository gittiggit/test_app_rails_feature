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
      render :back
    end
  end

  def show
  end

  def edit
  end

  private
  def timeexp_params
    params.require(:time_exp).permit :date, :date2
  end
end
