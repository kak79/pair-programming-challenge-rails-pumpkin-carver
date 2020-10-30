class Farm < ApplicationRecord

  has_many :pumpkins

  validates :name, presence: true, uniqueness: true, inclusion: { in: "Farm" }

  validates :zip_code, presence: true, numericality: { only_integer: true }, length: { is: 5 }

  validates :description, presence: true, length: { minimum: 20, maximum: 100 }

  validates :img_url, presence: true

end
