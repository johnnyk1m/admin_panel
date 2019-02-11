class TeachersController < ApplicationController
  
  def index
    @teacher = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
   @teacher = Teacher.new(teacher_params)
    if @teacher.valid?
      @teacher.save
      redirect_to teachers_path
    end
  end 

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to teacher_path
  end

  def destroy
  @teacher = Teacher.find(params[:id])
  Teacher.destroy(params[:id])
  @teacher.destroy
  redirect_to teachers_path
  end

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :age, :salary, :education, :cohort_id)
  end
end
