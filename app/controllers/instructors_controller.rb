class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  # GET /instructors
  # GET /instructors.json
  def index
    @instructors = Instructor.all.paginate(page: params[:page], per_page: 20)
  end
end
