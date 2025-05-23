# frozen_string_literal: true

json.extract! user, :id, :email, :password, :role, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
