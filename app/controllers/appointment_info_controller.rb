class AppointmentInfoController < ApplicationController
  def index
  	@appointments = current_user.appointments
  end
end
