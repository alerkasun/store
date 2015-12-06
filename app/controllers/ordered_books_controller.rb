class OrderedBooksController < InheritedResources::Base

  private
    def set_ordered_book
      @ordered_book = OrderedBook.find(params[:id])
    end

    def ordered_book_params
      params.require(:ordered_book).permit(:book_id, :order_id, :quantity, :price)
    end
end

