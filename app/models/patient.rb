class Patient < ApplicationRecord
  has_many :anaesthetics
  has_many :doctors, through: :anaesthetics
end
