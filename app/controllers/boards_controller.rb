class BoardsController < ApplicationController
  before_action :set_board, only: [:show]

  def show
    @new_threadd = Threadd.new
  end

  private

    def set_board
      if !Board.find_by(:shortcode => params[:shortcode]).nil?
        @board = Board.find_by(:shortcode => params[:shortcode])
        @threadds = @board.threadds.all
      else
        render :file => "#{Rails.root}/public/404.html",  :status => 404
      end
    end

end
