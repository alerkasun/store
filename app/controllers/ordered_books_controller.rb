class OrderedBooksController < InheritedResources::Base

  private

    def ordered_book_params
      params.require(:ordered_book).permit(:book_id, :order_id, :quantity, :price)
    end
end

