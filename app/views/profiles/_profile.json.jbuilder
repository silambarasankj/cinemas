json.extract! profile, :id, :user_id, :name, :gender, :marital_status, :mobile_no, :state_id, :district_id, :address, :created_at, :updated_at
json.url profile_url(profile, format: :json)
