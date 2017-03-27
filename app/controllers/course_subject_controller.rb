class CourseSubjectController < ApplicationController

  def index
    if params[:search] or params[:search]
      @coursesubject = CourseSubject.search(params[:search], params[:search2]).order("created_at DESC").paginate(:per_page => 10, :page => params[:page])
    else
      @coursesubject = CourseSubject.all.paginate(:per_page => 10, :page => params[:page])
    end
  end

  def new
  end
end
