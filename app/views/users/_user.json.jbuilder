json.extract! user, :id, :name, :photo, :created_at, :updated_at # rubocop:disable Layout/EndOfLine
json.url user_url(user, format: :json)
