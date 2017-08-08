class PostsController < ApplicationController
def new 
   @post = Post.new 
end
def create
  @post = current_user.posts.create(post_params)
  if @post.valid?
    redirect_to root_path
  else
    render :new, status: :unprocessable_entity
  end
end
def index
  @posts = Post.all.order('created_at DESC')
end
before_action :authenticate_user!, only: [:new, :create]
private

def post_params
  params.require(:post).permit(:user_id, :photo, :description)
end
end
