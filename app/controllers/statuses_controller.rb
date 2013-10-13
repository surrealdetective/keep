class StatusesController < ApplicationController
  before_filter :find_idea

  def new
    @status = @idea.statuses.build
  end

  def create
    @status = current_user.statuses.build(status_params)

    if @status.save
      flash[:notice] = "Idea updated successfully."
      redirect_to idea_path(@idea)
    else
      flash[:alert]  = "Update still needs some sparking."
      redirect_to idea_path(@idea)
    end
  end

  def index

  end

  def show

  end

  private

  def status_params
    params.require(:status).permit(:title, :content, :idea_id)
  end

  def find_idea
    @idea = Idea.find(params[:idea_id])
  end

end
