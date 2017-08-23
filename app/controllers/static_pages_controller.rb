class StaticPagesController < ApplicationController
  
  def home
      @msg = 'static page home アクション'
      @micropost = current_user.microposts.build if logged_in?
  end

  def help
      @msg = 'static page help アクション'
  end

  def about
  end

  def contact
  end
end