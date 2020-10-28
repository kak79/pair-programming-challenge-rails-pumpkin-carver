class Pumpkin < ApplicationRecord

  belongs_to :farm

  validates :name, presence: true

  validates :color, presence: true, inclusion: { in: %w(orange yellow white green) }

  validates :size, presence: true, numericality: { less_than: 2, greater: 10 }

  validate :img_url, presence: true, :validate_img
  def validate_img
    unless value =~ /(http(s?):)([/|.|\w|\s|-])*\.(?:jpg|gif|png)/
      errors.add(:img_url,"Is Not an Image")
    end
  end

end
