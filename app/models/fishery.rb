class Fishery < ApplicationRecord
  has_many :hatches, dependent: :destroy
  has_many :bugs, through: :hatches, source: :bug
end
