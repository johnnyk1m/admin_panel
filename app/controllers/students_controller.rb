class StudentsController < ApplicationController
  
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
   @student = Student.new(student_params)
   if @student.valid?
     @student.save
     redirect_to students_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path
  end

  def destroy
  Student.destroy(params[:id])
  redirect_to students_path
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :salary, :education, :cohort_id)
  end
end
