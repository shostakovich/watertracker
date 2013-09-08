require 'spec_helper'

feature 'View Measurements' do
  scenario 'Viewing a list of recent measurements' do
    Given 'Recent measurements'
    When 'I view the list of recent measurements'
    Then 'I see a list of recent measurements'
  end

  def recent_measurements
    @measurements = []
    @measurements << Measurement.create(hot_water: 123.12, cold_water: 345.12)
    @measurements << Measurement.create(hot_water: 13.10, cold_water: 34.14)
  end

  def i_view_the_list_of_recent_measurements
    visit measurement_index_path
  end

  def i_see_a_list_of_recent_measurements
    @measurements.each do |m|
      expect(page).to have_content(m.hot_water)
      expect(page).to have_content(m.cold_water)
    end
  end
end
