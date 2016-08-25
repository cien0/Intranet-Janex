require 'test_helper'

class KontaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kontum = konta(:one)
  end

  test "should get index" do
    get konta_url
    assert_response :success
  end

  test "should get new" do
    get new_kontum_url
    assert_response :success
  end

  test "should create kontum" do
    assert_difference('Kontum.count') do
      post konta_url, params: { kontum: { Id: @kontum.Id, Konto_ma_minus: @kontum.Konto_ma_minus, Konto_ma_plus: @kontum.Konto_ma_plus, Konto_wn_minus: @kontum.Konto_wn_minus, Konto_wn_plus: @kontum.Konto_wn_plus, Manual: @kontum.Manual, Rachunek: @kontum.Rachunek } }
    end

    assert_redirected_to kontum_url(Kontum.last)
  end

  test "should show kontum" do
    get kontum_url(@kontum)
    assert_response :success
  end

  test "should get edit" do
    get edit_kontum_url(@kontum)
    assert_response :success
  end

  test "should update kontum" do
    patch kontum_url(@kontum), params: { kontum: { Id: @kontum.Id, Konto_ma_minus: @kontum.Konto_ma_minus, Konto_ma_plus: @kontum.Konto_ma_plus, Konto_wn_minus: @kontum.Konto_wn_minus, Konto_wn_plus: @kontum.Konto_wn_plus, Manual: @kontum.Manual, Rachunek: @kontum.Rachunek } }
    assert_redirected_to kontum_url(@kontum)
  end

  test "should destroy kontum" do
    assert_difference('Kontum.count', -1) do
      delete kontum_url(@kontum)
    end

    assert_redirected_to konta_url
  end
end
