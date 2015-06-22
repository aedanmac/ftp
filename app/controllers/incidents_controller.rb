class IncidentsController < ApplicationController

	def index
        @incidents = Incident.all
    end

    def new
        @incident = Incident.new
    end

    def create
        incident = Incident.new
    end

    def show
        @incident = Incident.find(params[:id])
    end

    def edit
    @incident = Incident.find(params[:id])
    end

    def update
        @incident = Incident.find(params[:id])
            @incident.update_attributes
                redirect_to incidents_path
    end

    def destroy
            @incident = Incident.find(params[:id])
            @incident.destroy

            redirect_to posts_path
    end
end
