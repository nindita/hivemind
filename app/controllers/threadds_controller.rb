class ThreaddsController < ApplicationController
  before_action :set_thread, only: [:show]
  def show
  end

  private
    def set_thread
      @thread = Threadd.find(params[:threadd_id])
    end
end
