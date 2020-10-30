class Pumpkin < ApplicationRecord

  belongs_to :farm

  validates :name, presence: true

  validates :color, presence: true, inclusion: { in: %w(orange yellow white green) }

  validates :size, presence: true, numericality: { less_than: 11, greater_than: 1 }

  #causing error? Rails doesn't like the regex 

  # validates :img_url, presence: true, format: { with: /(http(s?):)([/|.|\w|\s|-])*\.(?:jpg|gif|png)/, message: "Is Not an Image" }
end
