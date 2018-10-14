class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
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
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save

    redirect_to school_class_path(@school_class)
  end

end ### End of SchoolClassesController


# Build out the new, create, show, edit, and update actions in each of the controllers.
