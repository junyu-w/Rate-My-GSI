class Gsi < ActiveRecord::Base
  has_many :Comments
  validates :name, presence: true
  validates :course, presence: true
end
