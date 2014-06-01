require "test_helper"

describe User do

  subject { User }

  describe "db" do

    specify "columns & types" do

      must_have_column(:bio, :text)
      must_have_column(:current_sign_in_at, :datetime)
      must_have_column(:email, :string)
      must_have_column(:encrypted_password, :string)
      must_have_column(:first_name, :string)
      must_have_column(:last_name, :string)
      must_have_column(:last_sign_in_at, :datetime)
      must_have_column(:last_sign_in_ip, :string)
      must_have_column(:remember_created_at, :datetime)
      must_have_column(:reset_password_token, :string)
      must_have_column(:reset_password_sent_at, :datetime)
      must_have_column(:sign_in_count, :integer)
      must_have_column(:tax_id, :string)
    end

    specify "indexes" do

      must_have_index(:email)
      must_have_index(:reset_password_token)
      must_have_index(:tax_id)
      must_have_multiple_index([:first_name, :last_name])
    end
  end

  describe "associations" do

    specify "has_many" do

      must_have_many(:addresses)
      must_have_many(:bids)
      must_have_many(:jobs)
      must_have_many(:demos)
      must_have_many(:positions)
      must_have_many(:orgs)
    end
  end

  describe "validations" do

    let(:user) { build(:user) }

    describe "email" do

      it "must not be blank" do

        user.update(email: nil).must_equal false
        user.errors.messages[:email].must_include "can't be blank"
      end

      it "must not be invalid" do
        bad_emails = %w[@.com blah localpart@]
        bad_emails.each do |bad_email|
          user.update(email: bad_email)
          user.errors.messages[:email].must_include "is invalid"
        end
      end
    end

    describe "password" do

      it "must not be blank" do
        user.update(password: nil).must_equal false
        user.errors.messages[:password].must_include "can't be blank"
      end

      it "won't be too short" do
        user.update(password: "a"*7)
        user.errors.messages[:password].first.must_match "too short"
      end

      it "won't be too long" do
        user.update(password: "a"*129)
        user.errors.messages[:password].first.must_match "too long"
      end
    end
  end
end
