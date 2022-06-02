class Fly < ApplicationRecord
  has_many  :matches, dependent: :destroy
  has_many :bugs, through: :matches
end
