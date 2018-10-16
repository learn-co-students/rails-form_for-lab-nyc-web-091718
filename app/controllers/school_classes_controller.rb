class SchoolClassesController < ApplicationController

  before_action :schoolclass, only: [:show, :edit, :update, :destroy]

  def index
    @schoolclasses = SchoolClass.all
  end

  def show

  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(schoolclass_params)
    redirect_to @schoolclass
  end

  def edit

  end

  def update
    @schoolclass.update(schoolclass_params)
    redirect_to @schoolclass
  end

  def destroy

  end

  private

  def schoolclass_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def schoolclass
    @schoolclass = SchoolClass.find(params[:id])
  end

end
