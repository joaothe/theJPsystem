class CommentsController < ApplicationController
  def create
    @inclusion = Inclusion.find(params[:inclusion_id])
    @comment = @inclusion.comments.create(comment_params)
    redirect_to inclusion_path(@inclusion)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
