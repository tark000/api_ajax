class PostsController < ApplicationController

  def posts_api
    respond_to do |format|
      format.json do
        lower_bound_id = params[:lower_bound_id]
        upper_bound_id = params[:upper_bound_id]
        @result = Post.posts(lower_bound_id, upper_bound_id)
        render json: @result
      end
    end
  end

end
