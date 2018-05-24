# == Schema Information
#
# Table name: doses
#
#  id            :bigint(8)        not null, primary key
#  description   :string
#  cocktail_id   :bigint(8)
#  ingredient_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: [:ingredient_id] }
  validates :description, presence: true
end
