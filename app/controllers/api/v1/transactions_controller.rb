require 'date'

class Api::V1::TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :update, :destroy]

  # GET /transactions
  def index
    @transactions = Transaction.all

    render json: @transactions
  end

  # GET /transactions/1
  def show
    render json: @transaction
  end

  # POST /transactions
  def create
    # binding.pry
    
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
# binding.pry
    if @transaction.save
    # binding.pry
      render json: @transaction.to_json(:include => { :category => { :only => :name } }, :except => [:created_at, :updated_at]), status: :created
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transactions/1
  def update
    # binding.pry
    if @transaction.update(transaction_params)
      render json: @transaction.to_json(:include => { :category => { :only => :name } }, :except => [:created_at, :updated_at])
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transactions/1
  def destroy
    @transaction.destroy
    render json: @transaction 
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def transaction_params
    params.require(:transaction).permit(:date, :description, :category_id, :deposit, :amount, :user_id, :tags)
  end
end
