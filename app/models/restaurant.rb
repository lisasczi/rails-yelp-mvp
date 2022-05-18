class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates_inclusion_of :category, presence: true, :in => ["chinese", "italian", "japanese", "french", "belgian"]

end
