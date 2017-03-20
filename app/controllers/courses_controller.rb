require 'will_paginate/array'

class CoursesController < ApplicationController

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all.paginate(page: params[:page], per_page: 20)
    if params[:search]
      @courses = Course.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 20)
    else
      @courses = Course.all.order("created_at DESC").paginate(page: params[:page], per_page: 20)
    end

    @subjects = Subject.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

end
