class PagesController < ApplicationController
  def home
    @special_prices = Book.where('special_price > 0')
                          .order(:special_price)
                          .limit(5)

    @recent_books = Book.joins(:book_storages).where('book_storages.amount > 0')
                        .where('book_id not in (?)', @special_prices.pluck(:id))
                        .order('created_at desc').limit(5)
                        

    @prolific_authors = Author.joins(:books)
                              .group("id")
                              .order("count(authors_books.author_id) desc")
                              .limit(5)
  end

  def about
  end

  def contact
  end
end
