class ClocksController < ApplicationController
  def index
  end

  def show
    @clock = Clock.find(params[:id])
  end
end