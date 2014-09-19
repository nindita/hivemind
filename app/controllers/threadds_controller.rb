class ThreaddsController < ApplicationController
  before_action :set_thread, only: [:show]

  def show
    @title = "/" + @threadd.board.shortcode + "/" + @threadd.id.to_s
  end

  def new
    @new_threadd = Threadd.new(threadd_params)
    @new_threadd.board_id = Board.find_by(:shortcode => params[:shortcode]).id
    respond_to do |format|
      if verify_recaptcha
        if @new_threadd.save
          format.html { redirect_to threadd_path(:id => Threadd.all.last), notice: 'New thread started' }
        else
          format.html { redirect_to board_path, alert: 'Name and/or Comment can\'t be blank' }
        end
      else
        format.html { redirect_to board_path, alert: 'Captcha Failed!' }
      end
    end
  end

  private
    def set_thread
      @threadd = Threadd.find(params[:id])
    end

    def threadd_params
      params.require(:threadd).permit(:name, posts_attributes: [:id, :content, :threadd_id, :image, :_destroy])
    end
end
