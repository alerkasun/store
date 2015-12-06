25.times do |i|
  i = i + 1

  a = Author.create(
    first_name: "First name #{i}",
    last_name: "Last name #{i}",
    date_of_birth: "1920-02-#{i}"
  )

  g = Genre.create(
    name: "Genre name #{i}"
  )

  p = Publisher.create(
    name: "Publisher name #{i}"
  )

  s = Storage.create(
    name: "Storage name #{i}",
    location: "Location #{i}",
    area: 100 + i,
    phone: 1929388 + i
  )

     b = Book.create(
      genre: g,
      authors: [a],
      publisher: p,
      title: "Title #{i}",
      publication_year: 1900 + i,
      page_count: 200 + i,
      price: 24.00 + i,
      special_price: i
    )

  bs = BookStorage.create(
    book: b,
    storage: s,
    amount: 100 + i
  )
end
