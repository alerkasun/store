class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
    @book.book_storages.build
  end

  def edit
    @book.book_storages.build
  end

  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(params.require(:book)
            .permit( :cover, :title, {:author_ids => []}, :genre_id, :publication_year, :page_count, :price, :publisher_id,
              :book_storages_attributes => [ :storage_id, :amount, :id, :_destroy ]))
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

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

  def search
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:cover, :title, {:author_ids => []}, :genre_id, :publication_year, :page_count,
        :price, :publisher_id, :book_storages_attributes => [ :storage_id, :amount, :_destroy ])
    end
end
