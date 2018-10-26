require 'test_helper'

class HealthCareProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_care_provider = health_care_providers(:one)
  end

  test "should get index" do
    get health_care_providers_url
    assert_response :success
  end

  test "should get new" do
    get new_health_care_provider_url
    assert_response :success
  end

  test "should create health_care_provider" do
    assert_difference('HealthCareProvider.count') do
      post health_care_providers_url, params: { health_care_provider: { address: @health_care_provider.address, city: @health_care_provider.city, company_name: @health_care_provider.company_name, hcp_id: @health_care_provider.hcp_id, state: @health_care_provider.state, telephone: @health_care_provider.telephone } }
    end

    assert_redirected_to health_care_provider_url(HealthCareProvider.last)
  end

  test "should show health_care_provider" do
    get health_care_provider_url(@health_care_provider)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_care_provider_url(@health_care_provider)
    assert_response :success
  end

  test "should update health_care_provider" do
    patch health_care_provider_url(@health_care_provider), params: { health_care_provider: { address: @health_care_provider.address, city: @health_care_provider.city, company_name: @health_care_provider.company_name, hcp_id: @health_care_provider.hcp_id, state: @health_care_provider.state, telephone: @health_care_provider.telephone } }
    assert_redirected_to health_care_provider_url(@health_care_provider)
  end

  test "should destroy health_care_provider" do
    assert_difference('HealthCareProvider.count', -1) do
      delete health_care_provider_url(@health_care_provider)
    end

    assert_redirected_to health_care_providers_url
  end
end
