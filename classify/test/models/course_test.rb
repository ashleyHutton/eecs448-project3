require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "should not save course with no name" do
  course = Course.new
  #no name
  course.school_id = 5
  course.save
  assert_not course.valid?

  end

  test "should not save course with no school id" do
  course = Course.new
  course.name = "Cooking"
  #no address
  course.save
  assert_not course.valid?

  end
end
