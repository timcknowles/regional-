class Anaesthetic < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  # has_many :follow_ups, through: :patient
end
