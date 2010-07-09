require 'test_helper'

class TrimmersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trimmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trimmer" do
    assert_difference('Trimmer.count') do
      post :create, :trimmer => { }
    end

    assert_redirected_to trimmer_path(assigns(:trimmer))
  end

  test "should show trimmer" do
    get :show, :id => trimmers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => trimmers(:one).to_param
    assert_response :success
  end

  test "should update trimmer" do
    put :update, :id => trimmers(:one).to_param, :trimmer => { }
    assert_redirected_to trimmer_path(assigns(:trimmer))
  end

  test "should destroy trimmer" do
    assert_difference('Trimmer.count', -1) do
      delete :destroy, :id => trimmers(:one).to_param
    end

    assert_redirected_to trimmers_path
  end
end
