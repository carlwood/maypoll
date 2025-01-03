class PollsController < ApplicationController
  def index
    
  end

  def new
    @poll = Poll.new
  end
end
