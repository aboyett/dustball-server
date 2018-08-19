class DashboardController < ApplicationController
  def index
    @samples = Sample.order(created_at: :desc).limit(250)
  end
end
