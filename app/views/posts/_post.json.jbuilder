json.extract! post, :id, :headline, :content, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
