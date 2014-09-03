class PostsController < ApplicationController

  def new
    @threadd = Threadd.find(params[:id])
    @new_post = Post.new(post_params)
    @new_post.threadd_id = @threadd.id
    respond_to do |format|
      if @new_post.save
        format.html { redirect_to threadd_path(:id => @new_post.threadd_id), notice: 'Posted!' }
      else
        format.html { redirect_to threadd_path(:id => @new_post.threadd_id) }
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
