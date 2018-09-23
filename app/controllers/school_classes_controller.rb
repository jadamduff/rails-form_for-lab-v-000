class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    @schoo_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:room_number]
    if @school_class.save
      redirect_to school_class_path(@school_class)
    end
  end

end
