json.extract! answer_list, :id, :question_id, :alternative_id, :simulation_answer_id, :created_at, :updated_at
json.url answer_list_url(answer_list, format: :json)
