class BoardsController < ApplicationController
  require 'will_paginate/array'
  before_action :set_board, only: [:show]

  def show
    @new_threadd = Threadd.new
    @title = "/" + @board.shortcode + "/"
  end

  private

    def set_board
      if !Board.find_by(:shortcode => params[:shortcode]).nil?
        @board = Board.find_by(:shortcode => params[:shortcode])
        @threadds = @board.threadds_by_post_id.first(100).paginate(:page => params[:page], :per_page => 10)
      else
        render :file => "#{Rails.root}/public/404.html",  :status => 404
      end
    end

end
