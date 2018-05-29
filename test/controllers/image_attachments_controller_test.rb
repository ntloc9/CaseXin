require 'test_helper'

class ImageAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_attachment = image_attachments(:one)
  end

  test "should get index" do
    get image_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_image_attachment_url
    assert_response :success
  end

  test "should create image_attachment" do
    assert_difference('ImageAttachment.count') do
      post image_attachments_url, params: { image_attachment: { image: @image_attachment.image, oplung_id: @image_attachment.oplung_id } }
    end

    assert_redirected_to image_attachment_url(ImageAttachment.last)
  end

  test "should show image_attachment" do
    get image_attachment_url(@image_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_attachment_url(@image_attachment)
    assert_response :success
  end

  test "should update image_attachment" do
    patch image_attachment_url(@image_attachment), params: { image_attachment: { image: @image_attachment.image, oplung_id: @image_attachment.oplung_id } }
    assert_redirected_to image_attachment_url(@image_attachment)
  end

  test "should destroy image_attachment" do
    assert_difference('ImageAttachment.count', -1) do
      delete image_attachment_url(@image_attachment)
    end

    assert_redirected_to image_attachments_url
  end
end
