class Manage < ApplicationRecord
  validates :name, presence: true
  validates :place, presence: true
  validates :number, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user
    def self.search(keyword)
        where(["name like? OR place like?", "%#{keyword}%", "%#{keyword}%"])
    end
end
