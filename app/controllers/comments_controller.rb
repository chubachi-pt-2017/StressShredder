class CommentsController < ApplicationController
  def index
    @msg = 'Comment data. '
    @data = Comment.all
  end

  def add
    @msg = "edit data.[id = " + params[:id] + "]"
    @comment = Comment.find(params[:id])
    if request.patch? then 
       @comment.update(comment_params)
     goback
    end
  end

  def edit
      @msg = "edit data.[id = " + params[:id] + "]"
    @comment = Comment.find(params[:id])
    if request.patch? then 
       @comment.update(comment_params)
     goback
    end
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
