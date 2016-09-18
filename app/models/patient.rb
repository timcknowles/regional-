class Patient < ApplicationRecord
  has_many :anaesthetics
  has_many :doctors, through: :anaesthetics

  has_many :follow_ups
  has_many :doctors, through: :follow_ups

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_format_of :DOB, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "Date must be in the following format: mm/dd/yyyy"

  # Getter
  def full_name
    [first_name, last_name].join(' ')
  end

  # Setter
  def full_name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end




end
