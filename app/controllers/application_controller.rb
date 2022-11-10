class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/doctors" do
    doctors = Doctor.all
    doctors.to_json
  end

  get "/patients" do
    doctors = Patient.all
    doctors.to_json
  end

  get "/patients/:id" do
    patients = Patient.find(params[:id])
    patients.to_json(include: :doctors)
  end

  get "/doctors/:id" do
    patients = Doctor.find(params[:id])
    patients.to_json(include: :specialists)
  end



  # delete "/appointments/:id" do
  #   appointments = Doctor.find(params[:id])
  #   appointments.destroy
  #   appointments.to_json
  # end
  

  # post "/patients" do
  #   patient = Patient.create(
  #     first_name: params[:first_name],
  #     last_name: params[:last_name],
  #     age: params[:age],
  #     gender: params[:gender]
  #   )

  #   patient.to_json
  # end

end
