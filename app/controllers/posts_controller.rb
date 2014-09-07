class PostsController < ApplicationController

  def new
    @threadd = Threadd.find(params[:id])
    @new_post = Post.new(post_params)
    @new_post.threadd_id = @threadd.id
    respond_to do |format|
      if @threadd.posts.count < 500
        if @new_post.save
          format.html { redirect_to threadd_path(:id => @new_post.threadd_id), notice: 'Posted!' }
        else
          format.html { redirect_to threadd_path(:id => @new_post.threadd_id), alert: 'Can\'t be blank' }
        end
      else
        format.html { redirect_to threadd_path(:id => @new_post.threadd_id), alert: 'Thread post limit reached (500)' }
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :image)
  end
end
