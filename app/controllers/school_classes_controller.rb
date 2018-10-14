class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private

  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  # def student_params(*args)
  #   params.require(:student).permit(*args)
  # end
  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
