class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    @appointments.each do |appointment|
      if appointment.appointment_date < Time.current && appointment.status == "Scheduled"
        appointment.update(status: "Completed")
      end
    end
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.status = "Scheduled"

    if @appointment.save
      redirect_to confirmation_path
    else
      redirect_to review_path, alert: "Failed to book appointment"
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])

    if @appointment.appointment_date > Time.current
      @appointment.update(status: "Cancelled")
    end

    redirect_to appointments_path
  end

  private

  def appointment_params
    params.permit(:patient_id, :doctor_id, :appointment_date)
  end
end  # ✅ Correctly placed 'end'
