class StudentsController < ApplicationController

  before_action :student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
    # byebug
  end

  def new
    @student = Student.new
  end

  def create
    # byebug
    @student = Student.create(student_params)
    redirect_to @student
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to @student
  end

  def destroy

  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def student
    @student = Student.find(params[:id])
  end
end
