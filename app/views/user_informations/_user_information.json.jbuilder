json.extract! user_information, :id, :name, :first_name, :last_name, :phone_number, :created_at, :updated_at
json.url user_information_url(user_information, format: :json)
