class FollowUp < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def boolean
    self[:boolean] ? 'Yes' : 'No'
  end


end
