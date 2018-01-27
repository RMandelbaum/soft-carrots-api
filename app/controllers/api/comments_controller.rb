commentclass Api::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
   render json: Comment.all
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: { message: comment.errors }, status: 400
    end
  end

  def show
    render json: @comment
  end

 def update
   if @comment.update(comment_params)
     render json: @comment
   else
     render json: { message: comment.errors}, status: 400
   end
 end

 def destroy
   if @comment.destroy
     render json: { message: 'Successfully Removed Item' }, status: 204
   else
     render json: { message: 'Unable to Delete'}, status: 400
   end
 end


  private

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description, :user, :joke_id)
  end

end
