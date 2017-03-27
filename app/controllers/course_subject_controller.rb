class CourseSubjectController < ApplicationController

  def index
    @coursesubject = CourseSubject.search(params[:search], params[:search2]).order("created_at DESC").paginate(:per_page => 10, :page => params[:page])

    respond_to do |format|
       format.js
       format.html
    end
  end

  def new
  end

  def show
    # @course_subject = CourseSubject.all
    if params[:search] or params[:search2]
      @coursesubject = CourseSubject.search(params[:search], params[:search2]).order("created_at DESC")
    end
  end
end
