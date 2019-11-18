class Blog < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
end
