class Project < ApplicationRecord
  validates :name, presence: true
  has_many_attached :photos
  belongs_to :user

end
