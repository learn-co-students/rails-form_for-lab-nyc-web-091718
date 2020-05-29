class SchoolClassesController < ApplicationController


  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)#no strong_params required for this lab?
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])

  end

  def update
    @school_class = SchoolClass.find(params[:id])# are strong
    @school_class.update(school_class_params)
    #redirection not required in the absence of validation?
    redirect_to school_class_path(@school_class)
  end

private

def school_class_params
  params.require(:school_class).permit(:title, :room_number)
end
end

# **Views** - Create a show page for each resource, along with `new` and `edit` forms.
