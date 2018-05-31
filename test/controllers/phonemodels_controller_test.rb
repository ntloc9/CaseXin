require 'test_helper'

class PhonemodelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phonemodel = phonemodels(:one)
  end

  test "should get index" do
    get phonemodels_url
    assert_response :success
  end

  test "should get new" do
    get new_phonemodel_url
    assert_response :success
  end

  test "should create phonemodel" do
    assert_difference('Phonemodel.count') do
      post phonemodels_url, params: { phonemodel: {  } }
    end

    assert_redirected_to phonemodel_url(Phonemodel.last)
  end

  test "should show phonemodel" do
    get phonemodel_url(@phonemodel)
    assert_response :success
  end

  test "should get edit" do
    get edit_phonemodel_url(@phonemodel)
    assert_response :success
  end

  test "should update phonemodel" do
    patch phonemodel_url(@phonemodel), params: { phonemodel: {  } }
    assert_redirected_to phonemodel_url(@phonemodel)
  end

  test "should destroy phonemodel" do
    assert_difference('Phonemodel.count', -1) do
      delete phonemodel_url(@phonemodel)
    end

    assert_redirected_to phonemodels_url
  end
end
