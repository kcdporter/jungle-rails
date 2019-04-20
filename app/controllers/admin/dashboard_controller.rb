class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['HTTP_BASIC_AUTH_USEREMAIL'].to_s, password: ENV['HTTP_BASIC_AUTH_PASSWORD'].to_s

  def show
  end
end
