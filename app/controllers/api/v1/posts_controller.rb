class Api::V1::PostsController < ApplicationController

  # GET posts
  def index
    @posts = Post.all
    render json: @posts
  end

  # GET /post/:id
  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: 200
    else
      render error: { error: 'Unable to create Post' }, status: 400
    end
  end

  # PUT /posts/:id
  def update
    @post = Post.find(params[:id])
    if @post
      @post.update(post_params)
      render json: @post, status: 200
    else
      render error: { error: 'Unable to update Post' }, status: 400
    end
  end

  # DELETE /posts/:id
  def destroy
    @post = Post.find(params[:id])
    if @post
      @post.destroy
      render json: { message: 'Post successfully deleted' }, status: 200
    else
      render error: { error: 'Unable to delete Post' }, status: 400
    end
  end

  private

  def post_params
    params.require(:post).permit([:title, :content, :likes, :dislikes])
  end
end
