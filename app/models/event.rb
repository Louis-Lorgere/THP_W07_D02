class Event < ApplicationRecord
  validates :start_date,
    presence: true,
    date: { after: Proc.new { Time.now }, message: 'must be after today' }
  validates :duration, presence: true, numericality: {only_integer: true}
  validate :duration_is_valid?
  validates :title, presence: true, length: {minimum: 5, maximum: 140}
  validates :description, presence: true, length: {minimum: 20, maximum: 1000}
  validates :price, presence: true, numericality: {less_than_or_equal_to: 1000, greater_than_or_equal_to: 1}
  validates :location, presence: true
  belongs_to :admin, class_name: "User"
  has_many :attendances
  has_many :users, through: :attendances

  def duration_is_valid?
    if duration.to_i % 5 != 0 || duration.to_i < 5
      errors.add(:duration, "La durée d'un évènement doit être un multiple de 5 et positif")
    end
  end

end
