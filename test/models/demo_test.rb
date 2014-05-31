require "test_helper"

describe Demo do

  subject { Demo }

  describe "db" do

    specify "columns & types" do

      must_have_column(:contractor_id, :integer)
      must_have_column(:client_id, :integer)
      must_have_column(:facilitator_id, :integer)
      must_have_column(:venue_id, :integer)
      must_have_column(:drafted_at, :datetime)
      must_have_column(:contracted_at, :datetime)
      must_have_column(:started_at, :datetime)
      must_have_column(:finished_at, :datetime)
      must_have_column(:submitted_at, :datetime)
      must_have_column(:rejected_at, :datetime)
      must_have_column(:accepted_at, :datetime)
      must_have_column(:payment_sent_at, :datetime)
      must_have_column(:payment_received_at, :datetime)
      must_have_column(:contractor_rated_at, :datetime)
      must_have_column(:client_rated_at, :datetime)
      must_have_column(:client_rating, :hstore)
      must_have_column(:contractor_rating, :hstore)
      must_have_column(:client_rated_at, :datetime)
      must_have_column(:hourly_rate, :decimal)
      must_have_column(:terms, :text)
      must_have_column(:name, :string)
      must_have_column(:aasm_state, :string)
    end
  end
end
