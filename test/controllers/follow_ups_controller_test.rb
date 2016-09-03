require 'test_helper'

class FollowUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @follow_up = follow_ups(:one)
  end

  test "should get index" do
    get follow_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_follow_up_url
    assert_response :success
  end

  test "should create follow_up" do
    assert_difference('FollowUp.count') do
      post follow_ups_url, params: { follow_up: { awareness_GA: @follow_up.awareness_GA, doctor_id: @follow_up.doctor_id, headache: @follow_up.headache, mobilising: @follow_up.mobilising, motor_weakness: @follow_up.motor_weakness, pain: @follow_up.pain, passed_urine: @follow_up.passed_urine, patient_id: @follow_up.patient_id, sensory_disturbance: @follow_up.sensory_disturbance } }
    end

    assert_redirected_to follow_up_url(FollowUp.last)
  end

  test "should show follow_up" do
    get follow_up_url(@follow_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_follow_up_url(@follow_up)
    assert_response :success
  end

  test "should update follow_up" do
    patch follow_up_url(@follow_up), params: { follow_up: { awareness_GA: @follow_up.awareness_GA, doctor_id: @follow_up.doctor_id, headache: @follow_up.headache, mobilising: @follow_up.mobilising, motor_weakness: @follow_up.motor_weakness, pain: @follow_up.pain, passed_urine: @follow_up.passed_urine, patient_id: @follow_up.patient_id, sensory_disturbance: @follow_up.sensory_disturbance } }
    assert_redirected_to follow_up_url(@follow_up)
  end

  test "should destroy follow_up" do
    assert_difference('FollowUp.count', -1) do
      delete follow_up_url(@follow_up)
    end

    assert_redirected_to follow_ups_url
  end
end
