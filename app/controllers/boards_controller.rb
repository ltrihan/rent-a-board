class BoardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boards = Board.all
  end
end
