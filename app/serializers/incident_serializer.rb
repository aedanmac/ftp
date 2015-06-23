class IncidentSerializer < ActiveModel::Serializer
  attributes :name, :age, :gender, :raceethnicity, :month, :day, :year, :streetaddress, :city, :state, :cause, :lawenforcementagency, :armed
end

