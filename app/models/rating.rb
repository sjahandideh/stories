class Rating < ActiveRecord::Base
  include ActiveModel::Serializers::JSON

  belongs_to :chapter
  belongs_to :user # user who gave the rating

  scope :by_user, ->(user_id) { where(user_id: user_id) }

  def attributes
    {
      'chapter_id' => nil,
      'value'      => nil
    }
  end
end
