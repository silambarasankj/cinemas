json.extract! gallery, :id, :user_id, :image, :purpose_type, :status, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
