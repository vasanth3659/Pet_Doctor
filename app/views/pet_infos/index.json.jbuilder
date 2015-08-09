json.array!(@pet_infos) do |pet_info|
  json.extract! pet_info, :id, :pet_name, :pet_type, :breed, :age, :weight, :last_visited_date
  json.url pet_info_url(pet_info, format: :json)
end
