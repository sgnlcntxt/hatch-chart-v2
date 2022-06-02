class Bug < ApplicationRecord
  has_many  :hatches, dependent: :nullify
  has_many  :matches, dependent: :nullify
end
