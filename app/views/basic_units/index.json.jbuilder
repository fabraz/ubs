json.array!(@basic_units) do |basic_unit|
  json.extract! basic_unit, :id
  json.url basic_unit_url(basic_unit, format: :json)
end
