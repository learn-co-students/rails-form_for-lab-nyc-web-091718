class StudentsController < ApplicationController


  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])#no strong_params required for this lab?
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])

  end

  def update
    @student = Student.find(params[:id])# are strong
    @student.update(params[:student])
    #redirection not required in the absence of validation?
    redirect_to student_path(@student)
  end

#no private actions required for this lab(?)

end
