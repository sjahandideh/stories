class Author < ActiveRecord::Base
  has_and_belongs_to_many :book

  validates :name,      presence: true
  validates :nick_name, presence: true
end
