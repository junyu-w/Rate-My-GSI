class Rating < ActiveRecord::Base

  belongs_to :gsi
  belongs_to :comment

end
