json.array!(@menus) do |menu|
  json.extract! menu, :id, :meal_id, :content
  json.url menu_url(menu, format: :json)
end
