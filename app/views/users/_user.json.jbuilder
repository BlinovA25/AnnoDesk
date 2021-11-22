json.extract! user, :id, :login, :fullname, :birthday, :email, :address, :city, :state, :country, :zip, :password, :confirm_password, :role, :latitude, :longitude, :created_at, :updated_at
json.url user_url(user, format: :json)
