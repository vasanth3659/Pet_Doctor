class Appointment < ActiveRecord::Base
  belongs_to :user
  validate :appointment_date_check
  validates :appointment_date, :pet, :user_id, :reason, presence: true
	
	def appointment_date_check
      errors.add(:appointment_date, "can't be in the past") if
	  !appointment_date.blank? and appointment_date < Date.today
	end
end 