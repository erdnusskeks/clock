class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :set_country
  before_filter :set_time_zone

private

  # def set_country
  #   if request.subdomains.empty? || request.subdomains.first == 'www'
  #     redirect_to(:subdomain => "uk")
  #   else
  #     @country ||= request.subdomains.first.upcase
  #   end
  #   @country ||= "IT"
  # end

  def set_time_zone
    case @country
    when 'DE'
      Time.zone = 'Berlin'
    when 'US'
      Time.zone = 'Central Time (US & Canada)'
    when 'UK'
      Time.zone = 'London'
    end
  end

end
