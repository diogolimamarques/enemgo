json.extract! comment, :id, :text, :commentable_id, :commentable_type, :created_at, :updated_at
json.url comment_url(comment, format: :json)
