class DashboardController < ApplicationController
  def index
    @samples_2hours = Sample.order(created_at: :desc).where("created_at > ?", Time.now - 2*60*60)
    @samples_24hours = Sample.order(created_at: :desc).where("created_at > ?", Time.now - 24*60*60)
  end
end
