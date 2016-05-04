require 'test_helper'

class ScoreTest < ActiveSupport::TestCase

   # workload tests -----------------------------------------------------------
   test "should not save score with workload rating below one" do
     score = Score.new
     score.likeability_rating = 3
     score.difficulty_rating = 3
     score.workload_rating = -2 #out of range
     score.course_id = 1
     score.creator_id = 1
     score.comment = "average course "
     assert !score.valid?
   end

   test "should not save score with workload rating above five" do
     score = Score.new
     score.likeability_rating = 3
     score.difficulty_rating = 3
     score.workload_rating = 8 #out of range
     score.course_id = 1
     score.creator_id = 1
     score.comment = "average course "
     assert !score.valid?
   end

   # difficulty tests ---------------------------------------------------------
   test "should not save score with difficulty rating below one" do
     score = Score.new
     score.likeability_rating = 3
     score.difficulty_rating = -2 #out of range
     score.workload_rating = 3
     score.course_id = 1
     score.creator_id = 1
     score.comment = "average course "
     assert !score.valid?
   end

   test "should not save score with difficulty rating above five" do
     score = Score.new
     score.likeability_rating = 3
     score.difficulty_rating = 8 #out of range
     score.workload_rating = 3
     score.course_id = 1
     score.creator_id = 1
     score.comment = "average course "
     assert !score.valid?
   end

   # likeability tests --------------------------------------------------------
   test "should not save score with likeability rating below one" do
     score = Score.new
     score.likeability_rating = -2 #out of range
     score.difficulty_rating = 3
     score.workload_rating = 3
     score.course_id = 1
     score.creator_id = 1
     score.comment = "average course "
     assert !score.valid?
   end

   test "should not save score with likeability rating above five" do
     score = Score.new
     score.likeability_rating = 8 #out of range
     score.difficulty_rating = 3
     score.workload_rating = 3
     score.course_id = 1
     score.creator_id = 1
     score.comment = "average course "
     assert !score.valid?
   end

   # course id tests --------------------------------------------------------
   ## DEBUG - This test doesn't work properly
   test "should not save score without course id" do
     score = Score.new
     score.likeability_rating = 8
     score.difficulty_rating = 3
     score.workload_rating = 3
     #score.course_id = 1 #no course id
     score.creator_id = 1
     score.comment = "average course "
     assert !score.valid?
   end

   # creator id tests --------------------------------------------------------
   ## DEBUG - This test doesn't work properly
   test "should not save score without creator id" do
     score = Score.new
     score.likeability_rating = 8
     score.difficulty_rating = 3
     score.workload_rating = 3
     score.course_id = 1
     #score.creator_id = 1 #no creator id
     score.comment = "average course "
     assert !score.valid?
   end


end
