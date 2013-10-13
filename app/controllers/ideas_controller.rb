class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    @idea = Idea.new
    @rand = Idea.rand_idea
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
    	flash[:notice] = "Idea sparked successfully."
    	redirect_to idea_path(@idea)
    else
    	flash[:alert] = "Idea still needs some sparking."
    	redirect_to ideas_path
    end
  end

  def show
    @idea     = Idea.find_by_id(params[:id])
    @comment  = Comment.new
    @comments = @idea.comments
    @statuses = @idea.statuses
    @links = @idea.links
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description, :location)
  end

end
