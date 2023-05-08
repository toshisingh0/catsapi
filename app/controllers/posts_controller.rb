class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]


  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def show
  	@post = Post.find(params[:id])   
  end	

  def create
  	@post = Post.new(post_params)

  	if @post.save   
      flash[:notice] = 'Post added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit post!'   
      render :new   
    end 
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to post_path(@post)
  end

  private

  def set_post
      @post = Post.find(params[:id])
    end

  def post_params
  	params.require(:post).permit(:name, :description, :published)
  end	

end
