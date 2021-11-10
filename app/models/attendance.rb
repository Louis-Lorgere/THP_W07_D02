class Attendance < ApplicationRecord
  after_create :new_event_send
  belongs_to :user
  belongs_to :event

  def new_event_send
    UserMailer.new_attendance(self).deliver_now
  end
end
