class MeasurementController < ApplicationController
  def index
    @measurements = Measurement.all
  end
end
