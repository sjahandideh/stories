class Book < ActiveRecord::Base

  has_and_belongs_to_many :author
  has_many :chapters, dependent: :delete_all

  validates :title,        presence: true
  validates :description,  presence: true

  after_initialize :defaults

  private

  def defaults
    self.icon_name ||= 'no_img.jpg'
  end

end
