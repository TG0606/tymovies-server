class UsersController < ApplicationController

  # before_action :authenticate_user, except: [:new, :create]
  before_action :check_if_admin, only: [ :index ]
  # skip_before_action :verify_authenticity_token

  def new
    @user = User.new
  end

  def postman

    @postman = "Hello from the postman method"

  end

  def create
    # @user = User.create user_params

    # newUser = User.create user_params

    newUser = User.create name: params[:name], email: params[:email], password: params[:password]

    puts "NEW USER"
    p newUser

    if newUser.persisted?
      puts "================= SUCCESS"
      render json: {created: true}
    else
      puts "+++++++++++++++++++++++"
      render json: {errors: newUser.errors.full_messages, }, status: 422
    end

    # if @user.persisted?
    #   session[:user_id] = @user.id
    #   redirect_to user_path(@user.id)
    # else
    #   render :new
    # end
    # render json: @user
  end

  def index
    p "~~~~~~~~~~~~~~~~~~~~~~~~~~"
    @users = User.all
    p @users
    render json: @users
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params

    params.require(:user).permit( :name, :email, :password, :password_confirmation )

  end

end
