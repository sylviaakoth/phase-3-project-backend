class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here


  get "/doctors" do
    doctors = Doctor.all
    doctors.to_json
  end

  get "/patients" do
    doctors = Patient.all
    doctors.to_json(include: :doctors)
  end

  get "/patients/:id" do
    patients = Patient.find(params[:id])
    patients.to_json(include: :doctors)
  end

  get "/doctors/:id" do
    patients = Doctor.find(params[:id])
    patients.to_json
  end

  delete "/patients/:id" do
    patients = Patient.find(params[:id])
    patients.destroy
    patients.to_json
  end

  post "/patients" do
    patient = Patient.create(
      first_name: params[:firstName],
      last_name: params[:lastName],
      age: params[:age],
      gender: params[:gender]
    )
    doctor = Doctor.all.sample

    Appointment.create(
      patient_id: patient.id,
      doctor_id: doctor.id
    )

    patient.to_json
  end

  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json
  end

  patch '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      gender: params[:gender]
    )
    patient.to_json
  end
  

end
