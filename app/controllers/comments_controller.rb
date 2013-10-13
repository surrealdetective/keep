class CommentsController < ApplicationController

  def new
    
  end

  def create
    @idea    = Idea.find_by_id(params[:idea_id])
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      flash[:notice] = "Comment sparked successfully."
      if params[:commit] == 'Contribute'
        redirect_to user_path(current_user)
      elsif params[:commit] == 'Dig Deeper'
        redirect_to idea_path(@idea)
      end
    else
      flash[:alert]  = "Comment still needs some sparking."
      redirect_to idea_path(@idea)
    end
  end

  def index
    
  end

  def show
    
  end

  private

  def comment_params
    params[:comment][:idea_id] = params[:idea_id]
    params.require(:comment).permit(:comment, :idea_id)
  end

end
