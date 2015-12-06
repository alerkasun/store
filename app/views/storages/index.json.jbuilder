json.array!(@storages) do |storage|
  json.extract! storage, :id, :name, :location, :area, :phone
  json.url storage_url(storage, format: :json)
end
