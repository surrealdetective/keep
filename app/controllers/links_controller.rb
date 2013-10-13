class LinksController < ApplicationController
  before_filter :find_idea

  def new
    @link = @idea.links.build
  end

  def create
    @link = current_user.links.build(link_params)

    if @link.save
      flash[:notice] = "Resource added successfully."
      redirect_to idea_path(@idea)
    else
      flash[:alert]  = "Resource not added."
      redirect_to idea_path(@idea)
    end
  end

  def index

  end

  def show

  end

  private

  def link_params
    params.require(:link).permit(:title, :content, :link, :idea_id)
  end

  def find_idea
    @idea = Idea.find(params[:idea_id])
  end

end
