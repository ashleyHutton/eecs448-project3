require 'test_helper'

class ScoreTest < ActiveSupport::TestCase
   test "should not save score with work load rating out of range" do
     score = Score.new
     score.likeability_rating = 8
     assert_not score.valid?
   end
end
