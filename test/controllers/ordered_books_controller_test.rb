require 'test_helper'

class OrderedBooksControllerTest < ActionController::TestCase
  setup do
    @ordered_book = ordered_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordered_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordered_book" do
    assert_difference('OrderedBook.count') do
      post :create, ordered_book: { book_id: @ordered_book.book_id, order_id: @ordered_book.order_id, price: @ordered_book.price, quantity: @ordered_book.quantity }
    end

    assert_redirected_to ordered_book_path(assigns(:ordered_book))
  end

  test "should show ordered_book" do
    get :show, id: @ordered_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordered_book
    assert_response :success
  end

  test "should update ordered_book" do
    patch :update, id: @ordered_book, ordered_book: { book_id: @ordered_book.book_id, order_id: @ordered_book.order_id, price: @ordered_book.price, quantity: @ordered_book.quantity }
    assert_redirected_to ordered_book_path(assigns(:ordered_book))
  end

  test "should destroy ordered_book" do
    assert_difference('OrderedBook.count', -1) do
      delete :destroy, id: @ordered_book
    end

    assert_redirected_to ordered_books_path
  end
end
