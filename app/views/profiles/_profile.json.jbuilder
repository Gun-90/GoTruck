json.extract! profile, :id, :name, :mobile_num, :adress, :birthday, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)