class PagesController < ApplicationController
  def home
  end

  def review
    @patient = Patient.last # Fetch the last created patient (since there's no login)
    @doctor = Doctor.find(params[:doctor_id])
    @appointment_date = params[:appointment_date]
  end

  def confirmation
  end
end
