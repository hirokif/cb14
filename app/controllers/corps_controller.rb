class CorpsController < ApplicationController

  def index
    @corp = Corp.all
  end

end
