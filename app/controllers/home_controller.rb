class HomeController < ApplicationController

  def home
    if !logged_in?
      redirect_to login_path
    end
  end

  def index
    @cohort = Cohort.all
    @course = Course.all
    @teacher = Teacher.all
    @student = Student.all
    @user = User.all
  end

  def show
    @cohort = Cohort.find(params[:id])
    @course = Course.find(params[:id])
    @teacher = Teacher.find(params[:id])
    @student = Student.find(params[:id])
  end
end
