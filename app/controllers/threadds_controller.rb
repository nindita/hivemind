class ThreaddsController < ApplicationController
  before_action :set_thread, only: [:show]

  def show
  end

  def new
    @new_threadd = Threadd.new(threadd_params)
    @new_threadd.board_id = Board.find_by(:shortcode => params[:shortcode]).id
    respond_to do |format|
      if @new_threadd.save
        format.html { redirect_to threadd_path(:id => Threadd.all.last), notice: 'New thread started' }
      else
        format.html { redirect_to board_path }
      end
    end
  end

  private
    def set_thread
      @threadd = Threadd.find(params[:id])
    end

    def threadd_params
      params.require(:threadd).permit(:name, posts_attributes: [:id, :content, :threadd_id, :_destroy])
    end
end
