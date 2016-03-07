class TestpointsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
def new 
@testpoint=Testpoint.new
end



  def create
    @testpoint = current_user.testpoints.build(testpoint_params)
    if @testpoint.save
      flash[:success] = "微博发布成功!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @testpoint.destroy
    redirect_to root_url
  end

  private

    def testpoint_params
      params.require(:testpoint).permit(:point,:id,:firsttheme,:secondtheme,:thirdtheme,:step,:result)
    end

    def correct_user
      @testpoint = current_user.testpoints.find_by(id: params[:id])
      redirect_to root_url if @testpoint.nil?
    end
end
