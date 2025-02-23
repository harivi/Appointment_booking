class DoctorsController < ApplicationController
  def index
    @specialties = Doctor.select(:specialty).distinct.pluck(:specialty)
    @doctors = Doctor.all
  end
end
