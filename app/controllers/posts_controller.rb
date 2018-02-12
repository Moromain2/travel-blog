class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def welcome
    @posts = Post.all.order("created_at desc").offset(1)
    @latest_post = Post.last
  end

  def index
    @posts = Post.all.order("created_at desc")
  end

  def new
    @post = Post.new
  end

  def create

    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: "L'article a été mis à jour ✌🏼"
    else
      render 'new', notice: "Hum... Impossible de sauvegarder l'article 😥"
    end

  end

  def show
  end

  def edit
  end

  def update
    if @post.update post_params
      redirect_to @post, notice: "L'article a été mis à jour ✌🏼"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
