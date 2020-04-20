require 'test_helper'

class AudiocardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audiocard = audiocards(:one)
  end

  test "should get index" do
    get audiocards_url, as: :json
    assert_response :success
  end

  test "should create audiocard" do
    assert_difference('Audiocard.count') do
      post audiocards_url, params: { audiocard: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show audiocard" do
    get audiocard_url(@audiocard), as: :json
    assert_response :success
  end

  test "should update audiocard" do
    patch audiocard_url(@audiocard), params: { audiocard: {  } }, as: :json
    assert_response 200
  end

  test "should destroy audiocard" do
    assert_difference('Audiocard.count', -1) do
      delete audiocard_url(@audiocard), as: :json
    end

    assert_response 204
  end
end
