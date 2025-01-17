class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  DEFAULT_PER_PAGE = 10
  def index
    @students = Student.paginate(page: params[:page], per_page: DEFAULT_PER_PAGE)
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: "Student was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_url, notice: "Student was successfully destroyed."
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:title, :first_name, :middle_name, :last_name, :gender, :email, :birth_date)
  end
end
