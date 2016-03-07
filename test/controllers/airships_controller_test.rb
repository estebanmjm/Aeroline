require 'test_helper'

class AirshipsControllerTest < ActionController::TestCase
  setup do
    @airship = airships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airship" do
    assert_difference('Airship.count') do
      post :create, airship: { capacity: @airship.capacity, ship_code: @airship.ship_code, ship_type: @airship.ship_type }
    end

    assert_redirected_to airship_path(assigns(:airship))
  end

  test "should show airship" do
    get :show, id: @airship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airship
    assert_response :success
  end

  test "should update airship" do
    patch :update, id: @airship, airship: { capacity: @airship.capacity, ship_code: @airship.ship_code, ship_type: @airship.ship_type }
    assert_redirected_to airship_path(assigns(:airship))
  end

  test "should destroy airship" do
    assert_difference('Airship.count', -1) do
      delete :destroy, id: @airship
    end

    assert_redirected_to airships_path
  end
end
