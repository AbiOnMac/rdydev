class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update]
  DEFAULT_PER_PAGE = 10
  def index
    @courses = Course.paginate(page: params[:page], per_page: DEFAULT_PER_PAGE)
    puts @courses
  end

  def show
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: "Course was successfully updated."
    else
      render :edit
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
    puts @course
  end

  def course_params
    params.require(:course).permit(:name, :description, :number_of_semesters, :start_date, :end_date, :allocation)
  end
end
