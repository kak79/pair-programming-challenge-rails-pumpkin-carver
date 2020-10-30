class Farm < ApplicationRecord

  has_many :pumpkins

  validates :name, presence: true, uniqueness: true 

  validate :name

    def include_farm
      if "Farm"
      
      else
      
      end
    end

  validates :zip_code, presence: true, length: { is: 5 }

  validates :description, presence: true, length: { minimum: 20, maximum: 100 }

  validates :img_url, presence: true

end
