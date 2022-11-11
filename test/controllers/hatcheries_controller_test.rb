require "test_helper"

class HatcheriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hatchery = hatcheries(:one)
  end

  test "should get index" do
    get hatcheries_url
    assert_response :success
  end

  test "should get new" do
    get new_hatchery_url
    assert_response :success
  end

  test "should create hatchery" do
    assert_difference("Hatchery.count") do
      post hatcheries_url, params: { hatchery: { description: @hatchery.description, history: @hatchery.history, name: @hatchery.name } }
    end

    assert_redirected_to hatchery_url(Hatchery.last)
  end

  test "should show hatchery" do
    get hatchery_url(@hatchery)
    assert_response :success
  end

  test "should get edit" do
    get edit_hatchery_url(@hatchery)
    assert_response :success
  end

  test "should update hatchery" do
    patch hatchery_url(@hatchery), params: { hatchery: { description: @hatchery.description, history: @hatchery.history, name: @hatchery.name } }
    assert_redirected_to hatchery_url(@hatchery)
  end

  test "should destroy hatchery" do
    assert_difference("Hatchery.count", -1) do
      delete hatchery_url(@hatchery)
    end

    assert_redirected_to hatcheries_url
  end
end
