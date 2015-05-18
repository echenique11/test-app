json.array!(@roles) do |role|
  json.extract! role, :id, :title, :route, :controller
  json.url role_url(role, format: :json)
end
