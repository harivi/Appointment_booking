class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    if @patient.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :phone, :email)
  end
end
