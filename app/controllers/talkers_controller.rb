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
    @talker = Talker.new Talkers_params
    if @talker.save then 
        redirect_to '/talkers'
    end
       render 'add'
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @talker = Talker.find(params[:id])
  end
  
  def update
   obj = Talker.find(params[:id])
   obj.update(talker_params)
   redirect_to '/talkers'
  end

  def list
    @msg = 'Talker data list. '
    @talker = Talker.find(parms[:id])
  end
  
private
def talker_params
   params.require(:talker).permit(:name, :pass)
end

def goback
  redirect_to '/talkers/index'
end
end
