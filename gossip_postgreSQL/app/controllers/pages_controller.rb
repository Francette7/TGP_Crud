class PagesController < ApplicationController
  def index
  	@gossip = Gossip.all
  end
end
