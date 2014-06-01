require "test_helper"

describe Address do

  subject { Address }

  describe "db" do

    specify "columns & types" do

      must_have_column(:addressable_id, :integer)
      must_have_column(:addressable_type, :string)
      must_have_column(:line_1, :string)
      must_have_column(:line_2, :string)
      must_have_column(:city, :string)
      must_have_column(:state, :string)
      must_have_column(:zip, :string)
      must_have_column(:phone, :string)
      must_have_column(:url, :string)
    end
  end

  describe "associations" do

    specify "belongs to" do

      must_belong_to :addressable
      must_belong_to :user
      must_belong_to :org
    end
  end
end
