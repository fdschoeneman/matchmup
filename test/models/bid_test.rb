require "test_helper"

describe Bid do

  subject { Bid }

  describe "db" do

    specify "columns & types" do

      must_have_column(:bidder_id, :integer)
      must_have_column(:demo_id, :integer)
      must_have_column(:amendments, :text)
      must_have_column(:accepted, :boolean)
    end
  end
end
