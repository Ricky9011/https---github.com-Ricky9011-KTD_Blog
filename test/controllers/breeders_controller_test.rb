require "test_helper"

class BreedersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breeder = breeders(:one)
  end

  test "should get index" do
    get breeders_url
    assert_response :success
  end

  test "should get new" do
    get new_breeder_url
    assert_response :success
  end

  test "should create breeder" do
    assert_difference("Breeder.count") do
      post breeders_url, params: { breeder: { description: @breeder.description, history: @breeder.history, name: @breeder.name } }
    end

    assert_redirected_to breeder_url(Breeder.last)
  end

  test "should show breeder" do
    get breeder_url(@breeder)
    assert_response :success
  end

  test "should get edit" do
    get edit_breeder_url(@breeder)
    assert_response :success
  end

  test "should update breeder" do
    patch breeder_url(@breeder), params: { breeder: { description: @breeder.description, history: @breeder.history, name: @breeder.name } }
    assert_redirected_to breeder_url(@breeder)
  end

  test "should destroy breeder" do
    assert_difference("Breeder.count", -1) do
      delete breeder_url(@breeder)
    end

    assert_redirected_to breeders_url
  end
end
