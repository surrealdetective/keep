class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    @idea = Idea.new
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.create(idea_params)
    redirect_to idea_path(@idea)
  end

  def show
    @idea = Idea.find_by_id(params[:id])
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description, :location)
  end

end
