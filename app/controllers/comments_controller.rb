class CommentsController < ApplicationController

   http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @inclusion = Inclusion.find(params[:inclusion_id])
    @comment = @inclusion.comments.create(comment_params)
    redirect_to inclusion_path(@inclusion)
  end

  def destroy
    @inclusion = Inclusion.find(params[:inclusion_id])
    @comment = @inclusion.comments.find(params[:id])
    @comment.destroy
    redirect_to inclusion_path(@inclusion)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
