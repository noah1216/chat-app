class MessagesController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end


end
