class CommentsController < ApplicationController
  
  def index
    @msg = 'Comment index data. '
    @data = Comment.all
  end
  
  def list
    @msg = 'Comment list data.'
    @data = Comment.all
###    @comment = Comment.find(params[:id])
###    @data = Comment.find(params[:id])
  end

  def add
    @msg = "add new data."
    @comment = Comment.new
  end

  def create
    @comment = Comment.new comment_params
    if @comment.save then 
          redirect_to '/comments'
          return
    end
       render 'add'
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @comment = Comment.find(params[:id])
  end
  
  def update
   obj = Comment.find(params[:id])
   obj.update(comment_params)
   redirect_to '/comments'
  end

private
def comment_params
   params.require(:comment).permit(:talker_id, :ts, :kubun, :comment )
end

def goback
  redirect_to '/comments/index'
end
end
