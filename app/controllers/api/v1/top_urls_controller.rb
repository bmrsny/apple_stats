class Api::V1::TopUrlsController < ApplicationController
  def index
    render json: Payload.top_urls
  end
end
