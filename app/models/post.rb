class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  #バリデーション、imageは有っても無くてもいいので設定しない
  validates_presence_of :text

end
