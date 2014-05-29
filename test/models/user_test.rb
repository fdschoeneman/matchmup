require "test_helper"

describe User do

  describe "db" do

    specify "columns & types" do

      must_have_column(User, :email, :string)
      must_have_column(User, :encrypted_password, :string)
      must_have_column(User, :reset_password_token, :string)
      must_have_column(User, :reset_password_sent_at, :datetime)
      must_have_column(User, :remember_created_at, :datetime)
      must_have_column(User, :sign_in_count, :integer)
      must_have_column(User, :current_sign_in_at, :datetime)
      must_have_column(User, :last_sign_in_ip, :string)
      must_have_column(User, :last_sign_in_at, :datetime)
    end

    specify "indexes" do

      must_have_index("users", "email")
      must_have_index("users", "reset_password_token")
    end

  end

  describe "associations" do

    specify "has_many" do

      must_have_many(User, :demos)

    end
    specify "belongs to" do


      # must_belong_to(User, )

    #   User.reflections[:orgs_users].macro.must_equal :has_many
    #   User.reflections[:orgs].macro.must_equal :has_many
    #   User.reflections[:orgs].options[:through].must_equal :orgs_users

    #      it { OrgsUser.reflections[:org].macro.must_equal :belongs_to }
    # it { OrgsUser.reflections[:user].macro.must_equal :belongs_to }
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
