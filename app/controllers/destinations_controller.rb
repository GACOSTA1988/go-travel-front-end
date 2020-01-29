class DestinationsController < ApplicationController
  def index
    this = $hang
    @destinations = HTTParty.get('http://localhost:3000/destinations', {headers: {Authorization: $hang}})
  end


end
