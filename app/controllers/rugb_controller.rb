class RugbController < ApplicationController
  def index
    render json: {time: Time.now}
  end
end
