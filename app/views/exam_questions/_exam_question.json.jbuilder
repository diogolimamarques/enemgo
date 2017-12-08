json.extract! exam_question, :id, :exam, :question_id, :created_at, :updated_at
json.url exam_question_url(exam_question, format: :json)
