class DestinationsController < ApplicationController
  def index
    this = $hang
    @destinations = HTTParty.get('http://localhost:3000/destinations', {headers: {Authorization: $hang}})
  end

  def show
    @destination = HTTParty.get("http://localhost:3000/destinations/#{params[:id]}", {headers: {Authorization: $hang}})
    @reviews = HTTParty.get("http://localhost:3000/destinations/#{params[:id]}/reviews", {headers: {Authorization: $hang}})
  end


end
