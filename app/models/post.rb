class Post < ActiveRecord::Base
 has_many :comments
  mount_uploader :image, ImageUploader    
  
  validates :text, presence: true


private
  def post_params
    params.require(:post).permit(:title, :text, :image)
  end

end