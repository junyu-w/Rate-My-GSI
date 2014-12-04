class Comment < ActiveRecord::Base
  has_many :replys
  belongs_to :Gsi
  validates :title, presence: true, length: 
    { 
      minimum: 1, 
      maximum: 10,
      tokenizer: lambda { |str| str.split(/\s+/) },
      too_short: "must have at least %{count} words",
      too_long: "must have at most %{count} words"
    };
  validates :content, presence: true, length: 
    { 
      minimum: 1, 
      maximum: 200,
      tokenizer: lambda { |str| str.split(/\s+/) },
      too_short: "must have at least %{count} words",
      too_long: "must have at most %{count} words"
    };
  validates :rating, presence: true, numericality:{
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100
  };
end
