class ApplicationController < ActionController::Base
  # before_action :restrict_access
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  private

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(token: token)
    end
  end
end
