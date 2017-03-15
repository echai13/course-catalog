json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :lastname, :firstname, :email
  json.url instructor_url(instructor, format: :json)
end
