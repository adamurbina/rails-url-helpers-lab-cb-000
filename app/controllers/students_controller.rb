class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def update
    set_student.active = !set_student.active
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
