require 'csv'

begin # additional check to skip if it enters this via rails console or a rails db:command, if no db exists yet
  if ActiveRecord::Base.connection.table_exists? :covid_observations #to have it not run on rails db:commands
    Rails.configuration.after_initialize do
      data = CSV.parse(File.read("lib/assets/covid_19_data.csv"), headers: true)

      data.each do |data_row|
        sno = data_row["SNo"]
        observation_date = Date.strptime(data_row["ObservationDate"], "%m/%d/%Y")
        country = data_row["Country/Region"]
        confirmed = data_row["Confirmed"]
        deaths = data_row["Deaths"]
        recovered = data_row["Recovered"]
        if CovidObservation.where(id: data_row["SNo"]).blank?
          CovidObservation.create(
            sno: sno,
            observation_date: observation_date,
            country: country,
            confirmed: confirmed,
            deaths: deaths,
            recovered: recovered
          )
        else
          covid_observation = CovidObservation.find(data_row["SNo"])
          covid_observation.observation_date = observation_date
          covid_observation.country = country
          covid_observation.confirmed = confirmed
          covid_observation.deaths = deaths
          covid_observation.recovered = recovered
          covid_observation.save!
        end
      end
    end
  end
rescue => e
  puts "no db yet"
end