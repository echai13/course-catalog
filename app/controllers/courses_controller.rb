require 'will_paginate/array'

class CoursesController < ApplicationController

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all.paginate(page: params[:page], per_page: 20)
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

end
