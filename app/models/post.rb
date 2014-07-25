class Post < ActiveRecord::Base

  mount_uploader :image, ImageUploader    
  validates :image, presence: true
  validates :title, presence: true,
                      length: { minimum: 5}

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


private
  def post_params
    params.require(:post).permit(:title, :text, :image)
  end

end