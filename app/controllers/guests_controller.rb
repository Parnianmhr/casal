class GuestsController < ApplicationController

  def create
    @guest = Guest.new
  end
end
