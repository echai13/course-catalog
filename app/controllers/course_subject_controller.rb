class CourseSubjectController < ApplicationController
  def new
  end

  def show
    # @course_subject = CourseSubject.all
    if params[:search] or params[:search2]
      @coursesubject = CourseSubject.search(params[:search], params[:search2]).order("created_at DESC")
    end
  end
end
