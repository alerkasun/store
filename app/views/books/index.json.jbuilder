json.array!(@books) do |book|
  json.extract! book, :id, :page_count, :publication_year, :title, :author, :price, :cover
  json.url book_url(book, format: :json)
end
