require 'test_helper'

class CourseSubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get course_subject_new_url
    assert_response :success
  end

end
