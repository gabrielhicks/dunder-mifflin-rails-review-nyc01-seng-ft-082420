class EmployeesController < ApplicationController

    def index 
        @employees = Employee.all
    end 

    def show
        @employee = Employee.find(params[:id])
    end 

    def edit
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.create(employee_params)
    end

    def new
        @employee = Employee.new
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end

end
