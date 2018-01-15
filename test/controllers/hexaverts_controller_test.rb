require 'test_helper'

class HexavertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hexavert = hexaverts(:one)
  end

  test "should get index" do
    get hexaverts_url
    assert_response :success
  end

  test "should get new" do
    get new_hexavert_url
    assert_response :success
  end

  test "should create hexavert" do
    assert_difference('Hexavert.count') do
      post hexaverts_url, params: { hexavert: { data: @hexavert.data, encoded: @hexavert.encoded } }
    end

    assert_redirected_to hexavert_url(Hexavert.last)
  end

  test "should show hexavert" do
    get hexavert_url(@hexavert)
    assert_response :success
  end

  test "should get edit" do
    get edit_hexavert_url(@hexavert)
    assert_response :success
  end

  test "should update hexavert" do
    patch hexavert_url(@hexavert), params: { hexavert: { data: @hexavert.data, encoded: @hexavert.encoded } }
    assert_redirected_to hexavert_url(@hexavert)
  end

  test "should destroy hexavert" do
    assert_difference('Hexavert.count', -1) do
      delete hexavert_url(@hexavert)
    end

    assert_redirected_to hexaverts_url
  end
end
