require 'test_helper'

class KennelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kennels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kennel" do
    assert_difference('Kennel.count') do
      post :create, :kennel => { }
    end

    assert_redirected_to kennel_path(assigns(:kennel))
  end

  test "should show kennel" do
    get :show, :id => kennels(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => kennels(:one).to_param
    assert_response :success
  end

  test "should update kennel" do
    put :update, :id => kennels(:one).to_param, :kennel => { }
    assert_redirected_to kennel_path(assigns(:kennel))
  end

  test "should destroy kennel" do
    assert_difference('Kennel.count', -1) do
      delete :destroy, :id => kennels(:one).to_param
    end

    assert_redirected_to kennels_path
  end
end
