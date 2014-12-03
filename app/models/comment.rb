class Comment < ActiveRecord::Base
  has_many :replys
  belongs_to :Gsi
  validates :title, presence: true
  validates :content, presence: true
end
