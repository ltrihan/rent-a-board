class BoardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @user = current_user
    @board.user = @user
    if @board.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to user_path(@user)
  end

  private

  def board_params
    params.require(:board).permit(:price, :category, :photo)
  end
end
