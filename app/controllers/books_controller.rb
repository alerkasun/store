class BooksController < InheritedResources::Base


  def add_to_cart
    book_id = params[:book_id]
    quantity = 1

    if session[:cart].has_key?(book_id)
      session[:cart][book_id] += 1
    else
      session[:cart][book_id] = quantity
    end
    
    redirect_to books_path
  end

  def remove_from_cart
    book_id = params[:book_id]
    session[:cart].except!(book_id)

    redirect_to watch_out_cart_books_path
  end

  def watch_out_cart
  end

  private

    def book_params
      params.require(:book).permit(:page_count, :publication_year, :title, :author, :price, :cover)
    end
end

