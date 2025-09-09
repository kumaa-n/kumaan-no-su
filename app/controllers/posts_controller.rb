class PostsController < ApplicationController
  def index
    @posts = Kaminari.paginate_array(PostLoader.all.map(&:info)).page(params[:page])
  end

  def show
    begin
      @post = PostLoader.new(params[:id])
      @front_matter = @post.front_matter
      @content_html = @post.content_html
    rescue => e
      Rails.logger.error("[PostsController#show] Failed to render post #{params[:id]}: #{e.message}")
      render plain: "Internal server error", status: :internal_server_error
    end
  end
end
