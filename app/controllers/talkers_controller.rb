class TalkersController < ApplicationController
  def index
    @msg = 'Talker data. '
    @data = Talker.all
  end

  def add
    @msg = "add new data."
    @talker = Talker.new
  end
  
  def create
    if request.post? then 
       Talker.create(talker_params)
    end
    redirect_to '/talkers'
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @talker = Talker.find(params[:id])
    if request.patch? then 
       @talker.update(talker_params)
     goback
    end
  end

  def list
    @msg = 'Talker data. '
    @data = Talker.all
  end
  
private
def talker_params
   params.require(:talker).permit(:name, :pass)
end

def goback
  redirect_to '/talkers/index'
end
end
