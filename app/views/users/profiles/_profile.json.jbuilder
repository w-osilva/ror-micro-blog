json.extract! profile, :id, :first_name, :last_name, :birthdate, :nickname, :about, :picture, :created_at, :updated_at
json.url profile_url(profile, format: :json)