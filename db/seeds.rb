10.times do |i|
  i =+ 1

  Book.create(
    cover: "#{i}.jpeg",
    title: "Title #{i}",
    author: i,
    publication_year: 1900 + i,
    page_count: 200 + i,
    price: 24.00 + i
  )
end
