json.extract! patient, :id, :first_name, :last_name, :DOB, :NHS_No, :MRN, :created_at, :updated_at
json.url patient_url(patient, format: :json)