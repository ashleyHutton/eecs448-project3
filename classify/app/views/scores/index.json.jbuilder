json.array!(@scores) do |score|
  json.extract! score, :id, :difficulty_rating, :workload_rating, :likeability_rating, :comment, :course_id
  json.url score_url(score, format: :json)
end
