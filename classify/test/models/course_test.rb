require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "should not save course" do
  course = course.new
  course.name = "Programming"
  assert !course.valid?

  end
end
