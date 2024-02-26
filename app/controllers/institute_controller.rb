class InstituteController < ApplicationController
  before_action :set_institute, only: [:show, :edit, :update]
  DEFAULT_PER_PAGE = 10
  def index
    @institutes = Institute.paginate(page: params[:page], per_page: DEFAULT_PER_PAGE)
  end

  def show
  end

  def edit
  end

  def update
    if @institute.update(institute_params)
      redirect_to @institute, notice: "Institute was successfully updated."
    else
      render :edit
    end
  end

  private

  def set_institute
    @institute = Institute.find(params[:id])
  end

  def institute_params
    params.require(:institute).permit(:name)
  end
end
