class IncidentsController < ApplicationController

	def index
        @incidents = Incident.all
    end

    def new
        @incident = Incident.new
        
    end

    def create
        incident = Incident.new(incident_params)
        if incident.save
            redirect_to incidents_path
        else
            flash["alert-warning"] = "Sorry, incident not created"
            redirect_to new_incident_path
        end
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

            redirect_to incidents_path
    end

    private

    def incident_params
        params.require(:incident).permit(:age, :gender, :raceethnicity, :month, :day, :year, :streetaddress, :city, :state, :cause, :lawenforcementagency, :armed)
    end

end
