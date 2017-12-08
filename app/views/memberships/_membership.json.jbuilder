json.extract! membership, :id, :start_date, :expire_date, :user_id, :plan_id, :created_at, :updated_at
json.url membership_url(membership, format: :json)
