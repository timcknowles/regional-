require 'test_helper'

class AnaestheticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anaesthetic = anaesthetics(:one)
  end

  test "should get index" do
    get anaesthetics_url
    assert_response :success
  end

  test "should get new" do
    get new_anaesthetic_url
    assert_response :success
  end

  test "should create anaesthetic" do
    assert_difference('Anaesthetic.count') do
      post anaesthetics_url, params: { anaesthetic: { complications: @anaesthetic.complications, date_and_time: @anaesthetic.date_and_time, doctor_id: @anaesthetic.doctor_id, indication: @anaesthetic.indication, intevention: @anaesthetic.intevention, no_attempts: @anaesthetic.no_attempts, patient_id: @anaesthetic.patient_id } }
    end

    assert_redirected_to anaesthetic_url(Anaesthetic.last)
  end

  test "should show anaesthetic" do
    get anaesthetic_url(@anaesthetic)
    assert_response :success
  end

  test "should get edit" do
    get edit_anaesthetic_url(@anaesthetic)
    assert_response :success
  end

  test "should update anaesthetic" do
    patch anaesthetic_url(@anaesthetic), params: { anaesthetic: { complications: @anaesthetic.complications, date_and_time: @anaesthetic.date_and_time, doctor_id: @anaesthetic.doctor_id, indication: @anaesthetic.indication, intevention: @anaesthetic.intevention, no_attempts: @anaesthetic.no_attempts, patient_id: @anaesthetic.patient_id } }
    assert_redirected_to anaesthetic_url(@anaesthetic)
  end

  test "should destroy anaesthetic" do
    assert_difference('Anaesthetic.count', -1) do
      delete anaesthetic_url(@anaesthetic)
    end

    assert_redirected_to anaesthetics_url
  end
end
