class Reply < ActiveRecord::Base
  belongs_to :Comment
  validates :content, presence: true
end
