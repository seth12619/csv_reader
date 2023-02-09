class CovidObservationsController < ApplicationController

  def index
    result = nil

    begin
      if !params.blank? && !params[:observation_date].blank?
        date = Date.parse(params[:observation_date])

        data = CovidObservation.where(observation_date: date).limit(params[:max_results].to_i)

        countries = []
        data.each do |covid_observation|

          obs_object = {
            "country": covid_observation.country,
            "confirmed": covid_observation.confirmed,
            "deaths": covid_observation.deaths,
            "recovered": covid_observation.recovered
          }
          countries << obs_object
        end

        result = {
          "observation_date": params[:observation_date],
          "countries": countries
        }

      end
    rescue => e
    end
    render json: result
  end

end