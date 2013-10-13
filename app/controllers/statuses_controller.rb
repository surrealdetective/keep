class StatusesController < ApplicationController

  def new

  end

  def create
    @idea    = Idea.find_by_id(params[:idea_id])
    @status = current_user.statuses.build(statuses_params)
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
    params[:status][:idea_id] = params[:idea_id]
    params.require(:status).permit(:status, :idea_id)
  end

end
