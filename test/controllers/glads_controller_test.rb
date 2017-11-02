require 'test_helper'

class GladsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glad = glads(:one)
  end

  test "should get index" do
    get glads_url
    assert_response :success
  end

  test "should get new" do
    get new_glad_url
    assert_response :success
  end

  test "should create glad" do
    assert_difference('Glad.count') do
      post glads_url, params: { glad: {  } }
    end

    assert_redirected_to glad_url(Glad.last)
  end

  test "should show glad" do
    get glad_url(@glad)
    assert_response :success
  end

  test "should get edit" do
    get edit_glad_url(@glad)
    assert_response :success
  end

  test "should update glad" do
    patch glad_url(@glad), params: { glad: {  } }
    assert_redirected_to glad_url(@glad)
  end

  test "should destroy glad" do
    assert_difference('Glad.count', -1) do
      delete glad_url(@glad)
    end

    assert_redirected_to glads_url
  end
end
