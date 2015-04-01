class Chapter < ActiveRecord::Base

  belongs_to :book
  has_many   :ratings

  def rating
    ratings.last
  end
end
