module Api
    class IncidentsController < ApplicationController
        protect_from_forgery with: :null_session

        def index
            render json: Incident.all
        end

        def default_serializer_options
    		{ root: false }
		end

		def show
        	render json: Incident.find(params[:id])
    	end
    end
end