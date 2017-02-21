class UsersController < ApplicationController

  def index
    @users = User.all
      respond_to do |format|
      format.html
      format.json { render :json => @users }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      format.json do
        if @user.save
          render :json => @user
        else
          render :json => { :errors => @user.errors.messages }, :status => 422
        end
      end
    end
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      format.json do
        if @user.update(user_params)
          render :json => @user
        else
          render :json => { :errors => @user.errors.messages }, :status => 422
        end
      end
    end
  end

  def destroy
    User.find(params[:id]).destroy
    respond_to do |format|
      format.json { render :json => {}, :status => :no_content }
    end
  end



  protected
  def user_params
    params[:user].permit(:type, :name, :degree, :research_topic, :job, :email, :phone)
  end
end
