json.extract! state, :id, :country_id, :name, :status, :created_at, :updated_at
json.url state_url(state, format: :json)
