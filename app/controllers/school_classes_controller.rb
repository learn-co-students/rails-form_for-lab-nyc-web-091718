class SchoolClassesController < ApplicationController


  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params[:school_class])#no strong_params required for this lab?
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])

  end

  def update
    @school_class = SchoolClass.find(params[:id])# are strong
    @school_class.update(params[:school_class])
    #redirection not required in the absence of validation?
    redirect_to school_class_path(@school_class)
  end

#no private actions required for this lab(?)
end

# **Views** - Create a show page for each resource, along with `new` and `edit` forms.
