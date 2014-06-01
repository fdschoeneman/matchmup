require "test_helper"

describe Position do

  subject { Position }

  describe "db" do

    specify "columns & types" do

      must_have_column(:org_id, :integer)
      must_have_column(:user_id, :integer)
      must_have_column(:title, :string)
      must_have_column(:description, :string)
    end

    specify "associations" do

      must_belong_to(:user)
      must_belong_to(:org)
    end
  end

  describe "validations" do

    let(:position) { build(:position) }

    specify "org_id" do

      position.update(org_id: nil)
      position.errors.messages[:org_id].must_include "can't be blank"
    end

    specify "user_id" do

      position.update(user_id: nil)
      position.errors.messages[:user_id].must_include "can't be blank"
    end
  end
end