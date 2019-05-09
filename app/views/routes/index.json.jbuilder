json.array! @current_user_routes.each do |route|
  json.id route.id
  json.date route.date
  json.listings route.listings
end