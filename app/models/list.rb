class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: { scope: :name, message: "already in list"}
  validates :name, presence: true

end
