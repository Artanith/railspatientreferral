require "test_helper"

class PracticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practice = practices(:one)
  end

  test "should get index" do
    get practices_url
    assert_response :success
  end

  test "should get new" do
    get new_practice_url
    assert_response :success
  end

  test "should create practice" do
    assert_difference("Practice.count") do
      post practices_url, params: { practice: { address: @practice.address, city: @practice.city, name: @practice.name, phone: @practice.phone, state: @practice.state, zip_code: @practice.zip_code } }
    end

    assert_redirected_to practice_url(Practice.last)
  end

  test "should show practice" do
    get practice_url(@practice)
    assert_response :success
  end

  test "should get edit" do
    get edit_practice_url(@practice)
    assert_response :success
  end

  test "should update practice" do
    patch practice_url(@practice), params: { practice: { address: @practice.address, city: @practice.city, name: @practice.name, phone: @practice.phone, state: @practice.state, zip_code: @practice.zip_code } }
    assert_redirected_to practice_url(@practice)
  end

  test "should destroy practice" do
    assert_difference("Practice.count", -1) do
      delete practice_url(@practice)
    end

    assert_redirected_to practices_url
  end
end
