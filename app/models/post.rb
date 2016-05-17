class Post < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :image, styles: { medium: "350x350"}
  validates_attachment_content_type :image, content_type: ["image/jpg","image/jpeg","image/png"]

  belongs_to :user
  has_many :comments

  validates_presence_of :text, :image

end
