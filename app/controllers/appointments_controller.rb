class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.create(appointment_params)
  end

  def create
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_datetime)
  end


end
