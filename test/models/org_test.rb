require "test_helper"

describe Org do

   subject { Org }

  describe "db" do

    specify "columns & types" do

      must_have_column(:name, :string)
      must_have_column(:tax_id, :string)
      must_have_column(:logo_id, :integer)
    end

    specify "indexes" do

      must_have_index(:name)
      must_have_index(:tax_id)
    end
  end
end
