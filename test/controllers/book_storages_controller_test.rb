require 'test_helper'

class BookStoragesControllerTest < ActionController::TestCase
  setup do
    @book_storage = book_storages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_storages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_storage" do
    assert_difference('BookStorage.count') do
      post :create, book_storage: { amount: @book_storage.amount, book_id: @book_storage.book_id, storage_id: @book_storage.storage_id }
    end

    assert_redirected_to book_storage_path(assigns(:book_storage))
  end

  test "should show book_storage" do
    get :show, id: @book_storage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_storage
    assert_response :success
  end

  test "should update book_storage" do
    patch :update, id: @book_storage, book_storage: { amount: @book_storage.amount, book_id: @book_storage.book_id, storage_id: @book_storage.storage_id }
    assert_redirected_to book_storage_path(assigns(:book_storage))
  end

  test "should destroy book_storage" do
    assert_difference('BookStorage.count', -1) do
      delete :destroy, id: @book_storage
    end

    assert_redirected_to book_storages_path
  end
end
