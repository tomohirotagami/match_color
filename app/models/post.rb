class Post < ActiveRecord::Base
  belongs_to :user
  has_many :commnts

  #バリデーション、imageは有っても無くてもいいので設定しない
  validates_presence_of :user_id, :text

end
