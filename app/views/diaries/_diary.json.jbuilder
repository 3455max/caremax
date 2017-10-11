json.extract! diary, :id, :date, :comment, :photo, :created_at, :updated_at
json.url diary_url(diary, format: :json)
