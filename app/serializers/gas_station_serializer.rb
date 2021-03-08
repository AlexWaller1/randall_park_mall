class GasStationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :minimart, :state_id, :state
  #belongs_to :state
end
