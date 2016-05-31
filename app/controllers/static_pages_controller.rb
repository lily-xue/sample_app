class StaticPagesController < ApplicationController
  def home
   if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
     # @testpoint = current_user.testpoints.build
      @feed_testpoint_items = current_user.feed_testpoint.paginate(page: params[:page])
   @area_items = current_user.area_new.paginate(page:params[:page]) 
   @area = Area.new 
   end
  end

  def help
  end
  
  def about
  end

  def IOS
   # @microposts = @user.microposts.paginate(page: params[:page])
#@area = Area.all    
     @testpoint = Testpoint.find_by(id: params[:id])
  end
  def show
  end
  def contact
  end
  def H5
end
end
