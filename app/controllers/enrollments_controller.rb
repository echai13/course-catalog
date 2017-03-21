class EnrollmentsController < ApplicationController
  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new(user_id: session[:user_id], course_id: params[:course_id])
    @enrollment.save
  end

  def show
  end

end