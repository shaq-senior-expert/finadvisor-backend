class Api::V1::UsersController < ApplicationController
  # before_action :set_user, only: [:transactions, :show, :update, :destroy]
  skip_before_action :authorized, only: [:create]
  # show current user transactions

  def transactions
    render json: current_user.transactions.to_json(:include => { :category => { :only => :name } }, :except => [:created_at, :updated_at])
  end

  def total_spend 
    render json: @user.total_spend
  end

  def total_income
    render json: @user.total_income
  end

  def profile
    # binding.pry
    render json: { user: current_user}, status: :accepted
  end
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: @user , jwt: @token}, status: :created
    else
      render json: { error: "failed to create user" }, status: :not_acceptable
    end
  end

  # PATCH/PUT /users/1
  def update
    # binding.pry
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :password,:first_name, :last_name, :age, :income, :access_token, :gender)
  end
end
