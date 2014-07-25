class Post < ActiveRecord::Base

  mount_uploader :image, ImageUploader    
  
  validates :text, presence: true,
                      length: { minimum: 5}


private
  def post_params
    params.require(:post).permit(:title, :text, :image)
  end

end