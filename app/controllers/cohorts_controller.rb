class CohortsController < ApplicationController
  
  def index
    @cohort = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end
  
  def new
    @cohort = Cohort.new
  end

  def create
   @cohort = Cohort.new(cohort_params)
   if @cohort.valid?
     @cohort.save
     redirect_to cohorts_path
    end
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    @cohort.update(cohort_params)
    redirect_to cohort_path
  end

  def destroy
  Cohort.destroy(params[:id])
  redirect_to cohorts_path
  end

  def cohort_params
  params.require(:cohort).permit(:name, :start_date, :end_date, :teacher_id, :course_id, :student_ids => [])
  end
end
