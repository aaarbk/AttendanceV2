class EmployeesController < ApplicationController
  def show
    @employee = current_user.employee
  end

  def index; end
end
