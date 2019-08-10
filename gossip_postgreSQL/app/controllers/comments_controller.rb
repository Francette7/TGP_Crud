class CommentsController < ApplicationController
	def index
  	@comment = Comment.all
  end

  def new
  	@comment = Comment.new
  end

  def create
  	@gossip = Gossip.find(params[:gossip_id])
  	@comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end

  def show
  	@comment = Comment.find(params[:id])
    
  end

  def edit
  	@comment = Comment.find(params[:id])
  end

  def update
  	
  end

  def destroy
  	@gossip = Gossip.find(params[:gossip_id])
  	@comment = @gossip.comments.find_by('gossip_id':params[:gossip_id])
  	@comment.destroy
  	redirect_to gossip_path(@gossip)

  end

  private
  def comment_params
  	params.require(:comment).permit(:content)
  end
end
