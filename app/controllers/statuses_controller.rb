class StatusesController < ApplicationController

  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  def show
    response = HTTParty.get("https://api.tfl.gov.uk/Line/Mode/tube/Status?detail=False&app_id=#{Rails.application.secrets.app_id}&app_key=e=#{Rails.application.secrets.app_key}")
    p response
    render json: response, status: 200
  end
end
