class EmployeesController < ApplicationController

    def create
        @employee = Employee.new(employee_params)
        # vincular compañia
        @employee.company = Company.find(params[:company_id])
        @employee.save!
        redirect_to @employee.company
    end

    def destroy
        @employee.destroy
        redirect_to companies_url, notice: 'Employee was successfully destroyed.'
    end

    private
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
    end

end
