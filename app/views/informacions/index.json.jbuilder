json.array!(@informacions) do |informacion|
  json.extract! informacion, :id, :Autor, :Genero, :Lanzamiento, :Duracion
  json.url informacion_url(informacion, format: :json)
end
