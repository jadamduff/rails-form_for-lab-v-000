class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    if @student.save
      redirect_to student_path(@student)
    end
  end

  def show
    @student = Student.find(params[:id])
  end

end
