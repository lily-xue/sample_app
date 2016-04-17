
class AreasController < ApplicationController
  before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
#  before_action :correct_user,   only: [:edit, :update]
#  before_action :admin_user,     only: :destroy

  def index
   # @areas = Area.paginate(page: params[:page])
    @areas = Area.paginate(page: params[:page], :per_page => 10, :order => 'name')
    @area = Area.new
   @area_items = current_user.area_new.paginate(page:params[:page]) 
  end

  def show
   @area = Area.find(params[:id])
   # @microposts = @user.microposts.paginate(page: params[:page])
   # @testpoints = @user.testpoints.paginate(page: params[:page])
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to @area
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @area.update_attributes(area_params)
      flash[:success] = "更新成功"
      redirect_to @area
    else
      render 'edit'
    end
  end

  def destroy
    Area.find(params[:id]).destroy
    flash[:success] = "用户删除成功"
    redirect_to areas_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    def area_params
      params.require(:area).permit(:name)
    end

    # Before filters

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  end
