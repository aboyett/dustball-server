require "application_system_test_case"

class SamplesTest < ApplicationSystemTestCase
  setup do
    @sample = samples(:one)
  end

  test "visiting the index" do
    visit samples_url
    assert_selector "h1", text: "Samples"
  end

  test "creating a Sample" do
    visit samples_url
    click_on "New Sample"

    fill_in "Ccs Temperature", with: @sample.ccs_temperature
    fill_in "Dust Density", with: @sample.dust_density
    fill_in "Eco2", with: @sample.eco2
    fill_in "Full Light", with: @sample.full_light
    fill_in "Humidity", with: @sample.humidity
    fill_in "Ir", with: @sample.ir
    fill_in "Lux", with: @sample.lux
    fill_in "Pm1", with: @sample.pm1
    fill_in "Pm10", with: @sample.pm10
    fill_in "Pm25", with: @sample.pm25
    fill_in "Pressure", with: @sample.pressure
    fill_in "Temperature", with: @sample.temperature
    fill_in "Tvoc", with: @sample.tvoc
    fill_in "Visible", with: @sample.visible
    click_on "Create Sample"

    assert_text "Sample was successfully created"
    click_on "Back"
  end

  test "updating a Sample" do
    visit samples_url
    click_on "Edit", match: :first

    fill_in "Ccs Temperature", with: @sample.ccs_temperature
    fill_in "Dust Density", with: @sample.dust_density
    fill_in "Eco2", with: @sample.eco2
    fill_in "Full Light", with: @sample.full_light
    fill_in "Humidity", with: @sample.humidity
    fill_in "Ir", with: @sample.ir
    fill_in "Lux", with: @sample.lux
    fill_in "Pm1", with: @sample.pm1
    fill_in "Pm10", with: @sample.pm10
    fill_in "Pm25", with: @sample.pm25
    fill_in "Pressure", with: @sample.pressure
    fill_in "Temperature", with: @sample.temperature
    fill_in "Tvoc", with: @sample.tvoc
    fill_in "Visible", with: @sample.visible
    click_on "Update Sample"

    assert_text "Sample was successfully updated"
    click_on "Back"
  end

  test "destroying a Sample" do
    visit samples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sample was successfully destroyed"
  end
end
