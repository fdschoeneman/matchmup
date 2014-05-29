class DemoSerializer < ActiveModel::Serializer
  attributes :id, :contractor_id, :client_id, :facilitator_id, :facility_id, :aasm_state
end
