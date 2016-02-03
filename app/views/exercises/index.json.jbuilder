json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :date, :exercise, :weight, :reps, :max, :bulk, :tone, :user_id
  json.url exercise_url(exercise, format: :json)
end
