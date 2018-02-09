class MicropostsController < ApplicationController
#  before_action :set_micropost, only: [:index, :show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:create, :destroy]
  
  def list
    @msg = 'Microposts controller list アクション'
    @microposts = Micropost.all
  end
  
  # GET /microposts
  # GET /microposts.json
  def index
    @msg = 'Microposts cont. index アクション'
    @micropost = Micropost.find(params[:id])
  end

  # GET /microposts/1
  # GET /microposts/1.json
  def show
    @msg = 'Microposts cont. show アクション'
    @micropost = Micropost.find(params[:id])
  end

  # GET /microposts/1/edit
  def edit
    @msg = 'Microposts cont. edit アクション'
  end

    # GET /microposts/new
  def guchi
    @msg = 'Microposts cont. guchi アクション'
    @micropost = Micropost.new
  end
  
    # GET /microposts/new
  def new
    @msg = 'Microposts cont. new アクション'
    @micropost = Micropost.new
  end

  # POST /microposts
  # POST /microposts.json
  def create
    @msg = 'Microposts cont. creste アクション'
    @micropost = Micropost.new(micropost_params)
    @micropost = current_user.microposts.build(micropost_params)

    if @micropost.save
      flash[:success] = "Micropost created !!!"
      redirect_to controller: :users , action: :index ,id: [@micropost.user_id]
#
    else
      render 'static_pages/home'
    end
  end
  
  def destroy
  end

  # PATCH/PUT /microposts/1
  # PATCH/PUT /microposts/1.json
  def update
    respond_to do |format|
      if @micropost.update(micropost_params)
        format.html { redirect_to @micropost, notice: 'Micropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropost }
      else
        format.html { render :edit }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposts/1
  # DELETE /microposts/1.json
  def destroy
    @micropost.destroy
    respond_to do |format|
      format.html { redirect_to microposts_url, notice: 'Micropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost
      @micropost = Micropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost_params
      params.require(:micropost).permit(:content, :user_id, :kubun)
    end
end