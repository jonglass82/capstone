json.array! @current_user_routes.each do |route|
  json.date route.date
end