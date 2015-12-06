json.array!(@ordered_books) do |ordered_book|
  json.extract! ordered_book, :id, :book_id, :order_id, :quantity, :price
  json.url ordered_book_url(ordered_book, format: :json)
end
