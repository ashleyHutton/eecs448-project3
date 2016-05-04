require 'test_helper'

class ScoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save" do
  score = Score.new
  score.workload_rating = 8
  assert !score.valid?

end





end
