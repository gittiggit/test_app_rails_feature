class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    @department = Department.new
  end

  def create
    @department = Department.create department_params

    respond_to do |format|
      if @department.save
        format.html {redirect_to departments_path, notice: "Department created"}
        format.js {}
      else
        format.html {render action: :index}
        format.js {}
      end
    end
  end
  
  private
  def department_params
    params.require(:department).permit :name, :location
  end
end
