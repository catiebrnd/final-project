json.array!(@nicknames) do |nickname|
  json.extract! nickname, :id, :first_name, :last_name, :employee_id
  json.url nickname_url(nickname, format: :json)
end
