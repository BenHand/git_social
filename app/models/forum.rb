class Forum < ActiveRecord::Base
  belongs_to :user
  has_many :posts

end
