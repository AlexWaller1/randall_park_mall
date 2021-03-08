class Api::V1::GasStationsController < ApplicationController

    def index
        gas_stations = GasStation.all
        render json: gas_stations
    end

    def create
        gas_station = GasStation.new(gas_station_params)
        if gas_station.save
            render json: gas_station, status: :accept
        else
            render json: {errors: gas_station.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def gas_station_params
        params.require(:gas_station).permit(:name, :address, :minimart, :state_id)
    end
end
