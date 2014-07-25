class PostsController < ApplicationController
 http_basic_authenticate_with name: "test", password: "secret",
  except: [:index, :show]
 
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
    redirect_to @post

    else
      render 'new'
    end
  end

  # post_id = Post.last.id + 1
  # then after @post
  # do @post.id = post_id


  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
    @posts = Post.order('id DESC')
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post

    else
      render 'edit'
      end
    end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end



  private
  def post_params
    params.require(:post).permit(:title, :text, :image)
  end


end
