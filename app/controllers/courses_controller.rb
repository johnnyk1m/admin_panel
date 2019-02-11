class CoursesController < ApplicationController
  
  def index
    @course = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.valid?
      @course.save
      redirect_to courses_path
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path
  end

  def destroy
  Course.destroy(params[:id])
  redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours, :cohort_id)
  end
end
