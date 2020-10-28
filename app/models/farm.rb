class Farm < ApplicationRecord

  has_many :pumpkins

  validates :name, presence: true, uniqueness: true, inclusion: { in: "Farm" }

  validates :zip_code, presence: true, numericality: { only_integer: true }, length: { is: 5 }

  validates :description, presence: true, length: { minimum: 20, maximum: 100 }

  validates :img_url, presence: true
  validate :img_url, :validate_img
    def validate_img
      unless value =~ /(http(s?):)([/|.|\w|\s|-])*\.(?:jpg|gif|png)/
        errors.add(:img_url,"Is Not an Image")
      end
    end
end
