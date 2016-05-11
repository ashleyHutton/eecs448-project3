require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  # DEBUG - test not giving desired results
  test "should not save if duplicate school name" do
    temp = School.new
    temp.name = "ABC"
    temp.address = "DEFF"
    temp.save

    actual = School.new
    actual.name = "ABC"
    actual.address = "DEF"
    actual.save

    assert_not actual.valid?
  end

  test "should not save if no address" do
    temp = School.new
    temp.name = "ABC"
    temp.save

    assert_not temp.valid?
  end

end
