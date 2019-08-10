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
  	 @gossip = Gossip.create(title:params[:title], content:params[:content], user_id:(rand(1..10)))
     @gossip.user = User.find_by(id: session[:user_id])
    if @gossip.save
      flash[:success] = " 😇 Félicitation! vous venez de créer un nouveau Potin! 👌"
        redirect_to 'root_path'
    else
    flash[:failed] = "🤔 Attention!!! le titre/contenu n'est pas validé. 🤓 Veillez réessayer svp!"
        render '/gossips/new'
    end
  end

  def edit
  	@gossip = Gossip.find(params[:id])
  end

  def update
  	@gossip = Gossip.find(params[:id])
  	
	  if @gossip.update(gossip_params)
      flash[:success] = " 😇 Félicitation! vous venez de mettre à jour votre Potin! 👌"
        redirect_to '/'
  else
    flash[:failed] = "🤔 Attention!!! le titre/contenu n'est pas validé. 🤓 Veillez réessayer svp!"
        render '/gossips/edit'
    end
  end

  def destroy(id)
  	@gossip = Gossip.find(params[:id])
  	@gossip.destroy
  	redirect_to gossips_path
  end

end
