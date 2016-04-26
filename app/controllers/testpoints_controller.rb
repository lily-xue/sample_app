class TestpointsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy,:edit,:update]
  before_action :correct_user,   only: :destroy
def new 
@area = Area.find(params[:area_id])    
@testpoint = @area.testpoints.build(testpoint_params)
end



  def create
@area = Area.find(params[:area_id])    
@testpoint = @area.testpoints.build(testpoint_params)
#byebug
    if @testpoint.save
      flash[:success] = "提交案例成功!"
     redirect_to @area
    else
    #  @feed_testpoint_items = []
  flash[:error] ="保存失败"
  end
  end

 def edit
   #if correct_user?
   #   @micropost  = current_user.microposts.build
    #  @feed_items = current_user.feed.paginate(page: params[:page])
     @testpoint = current_user.testpoints.find_by(id: params[:id])
    #@testpoints = current_user.testpoints.paginate(page: params[:page])
     # @feed_testpoint_items = current_user.feed_testpoint.paginate(page: params[:page])
    #end
  end

  def update
     @testpoint = current_user.testpoints.find_by(id: params[:id])
    if @testpoint.update_attributes(testpoint_params)
      flash[:success] = "更新案例成功"
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    @testpoint.destroy
    redirect_to root_url
  end

  private

    def testpoint_params
      params.require(:testpoint).permit(:area_id,:point,:step,:level)
    end

    def correct_user
      @testpoint = current_user.testpoints.find_by(id: params[:id])
      redirect_to root_url if @testpoint.nil?
    end
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
