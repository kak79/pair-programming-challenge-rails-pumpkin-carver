class Farm < ApplicationRecord

  has_many :pumpkins

  validates :name, presence: true, uniqueness: true

  validate :name, :includes_farm


  validates :zip_code, presence: true, length: { is: 5 }, numericality: true

  validates :description, presence: true, length: { minimum: 20, maximum: 100 }

  validates :img_url, presence: true

  def includes_farm
    errors.add(:name, "Is not a valid farm name") unless name.include? "Farm"
  end

end
