require 'csv'
class ApplicationController < ActionController::Base
  before_action :set_file

  def set_file
    # data = CSV.parse(File.read("lib/assets/covid_19_data.csv"), headers: true)

    # data.each do |data_row|
    #   sno = data_row["SNo"]
    #   observation_date = Date.strptime(data_row["ObservationDate"], "%m/%d/%Y")
    #   country = data_row["Country/Region"]
    #   confirmed = data_row["Confirmed"]
    #   deaths = data_row["Deaths"]
    #   recovered = data_row["Recovered"]
    #   if CovidObservation.where(id: data_row["SNo"]).blank?
    #     CovidObservation.create(
    #       sno: sno,
    #       observation_date: observation_date,
    #       country: country,
    #       confirmed: confirmed,
    #       deaths: deaths,
    #       recovered: recovered
    #     )
    #   else
    #     covid_observation = CovidObservation.find(data_row["SNo"])
    #     covid_observation.observation_date = observation_date
    #     covid_observation.country = country
    #     covid_observation.confirmed = confirmed
    #     covid_observation.deaths = deaths
    #     covid_observation.recovered = recovered
    #     covid_observation.save!
    #   end
    # end
  end
  
end
