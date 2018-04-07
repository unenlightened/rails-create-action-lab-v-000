class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first][:name]
    @student.last_name = params[:last][:name]
    @student.save
    redirect_to @student
  end

end
