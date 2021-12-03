class LikesController < ApplicationController
  before_action :authenticate_account!

  def save_like
    @like = Like.new(post_id: params[:post_id], account_id: current_account.id)
    @post_id = params[:post_id]

        if @like.save
          respond_to :js
          @success = false
        else
          @success = true
        end

        render "posts/like"
  end

end