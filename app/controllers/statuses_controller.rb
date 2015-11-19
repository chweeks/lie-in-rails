class StatusesController < ApplicationController

  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  def show
    response = HTTParty.get("https://api.tfl.gov.uk/Line/Mode/tube/Status?detail=False&app_id=#{APP_ID}&app_key=e=#{APP_KEY}")
    render json: response, status: 200
  end
end
