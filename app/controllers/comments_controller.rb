class CommentsController < ApplicationController
  
  def index
    @msg = 'Comment data. '
    @data = Comment.all
  end

  def add
    @msg = "add new data."
    @comment = Comment.new
  end

  def create
    @comment = Comment.new Comment_params
    if @comment.save then 
          redirect_to '/comments'
    end
       render 'add'
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @comment = Comment.find(params[:id])
  end
  
  def update
   obj = Comment.find(params[:id])
   obj.update(talker_params)
   redirect_to '/comments'
  end
  
  def list
    @msg = 'Comment data. '
    @data = Comment.all
  end

private
def comment_params
   params.require(:comment).permit(:talker_id, :kubun, :comment )
end

def goback
  redirect_to '/comments/index'
end
end
