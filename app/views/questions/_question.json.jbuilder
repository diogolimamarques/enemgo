json.extract! question, :id, :statement, :status, :source, :user_id, :area, :created_at, :updated_at
json.url question_url(question, format: :json)
