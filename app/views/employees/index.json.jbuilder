json.array!(@employees) do |employee|
  json.extract! employee, :name, :city_id, :manager_id
  json.url employee_url(employee, format: :json)
end
