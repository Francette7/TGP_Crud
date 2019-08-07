class GossipsController < ApplicationController
  def index
  	@gossip = Gossip.all
  end

  def show
  	@gossip = Gossip.find(params[:id])
  end

  def new
  	@gossip = Gossip.new
  end

  def create
  	@gossip = Gossip.create(gossip_params)
  	redirect_to edit_gossip_path
  end

  def edit
  	@gossip = Gossip.find(params[:id])
  end

  def update
  	@gossip = Gossip.find(params[:id])
  	
	  if @gossip.update(gossip_params)

	    redirect_to gossip_path
	  else
	    render :edit
	  end
  end

  def destroy(id)
  	@gossip = Gossip.find(params[:id])
  	@gossip.destroy
  	redirect_to gossips_path
  end

  private

  def gossip_params
  	params.require(:gossip).permit(:title, :content, :user_id)
  end
end
