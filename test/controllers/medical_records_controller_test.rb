require 'test_helper'

class MedicalRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get medical_records_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_record_url
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference('MedicalRecord.count') do
      post medical_records_url, params: { medical_record: { address: @medical_record.address, allergies: @medical_record.allergies, city: @medical_record.city, dob: @medical_record.dob, doctor_first_name: @medical_record.doctor_first_name, doctor_last_name: @medical_record.doctor_last_name, employee_id: @medical_record.employee_id, existing_cond: @medical_record.existing_cond, family_history: @medical_record.family_history, fasting: @medical_record.fasting, first_name: @medical_record.first_name, hcp_id: @medical_record.hcp_id, last_name: @medical_record.last_name, medications: @medical_record.medications, middle_name: @medical_record.middle_name, ssn: @medical_record.ssn, state: @medical_record.state, telephone: @medical_record.telephone } }
    end

    assert_redirected_to medical_record_url(MedicalRecord.last)
  end

  test "should show medical_record" do
    get medical_record_url(@medical_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_record_url(@medical_record)
    assert_response :success
  end

  test "should update medical_record" do
    patch medical_record_url(@medical_record), params: { medical_record: { address: @medical_record.address, allergies: @medical_record.allergies, city: @medical_record.city, dob: @medical_record.dob, doctor_first_name: @medical_record.doctor_first_name, doctor_last_name: @medical_record.doctor_last_name, employee_id: @medical_record.employee_id, existing_cond: @medical_record.existing_cond, family_history: @medical_record.family_history, fasting: @medical_record.fasting, first_name: @medical_record.first_name, hcp_id: @medical_record.hcp_id, last_name: @medical_record.last_name, medications: @medical_record.medications, middle_name: @medical_record.middle_name, ssn: @medical_record.ssn, state: @medical_record.state, telephone: @medical_record.telephone } }
    assert_redirected_to medical_record_url(@medical_record)
  end

  test "should destroy medical_record" do
    assert_difference('MedicalRecord.count', -1) do
      delete medical_record_url(@medical_record)
    end

    assert_redirected_to medical_records_url
  end
end
