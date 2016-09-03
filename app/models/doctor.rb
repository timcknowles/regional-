class Doctor < ApplicationRecord
  has_many :anaesthetics
  has_many :patients, through: :anaesthetics
end
