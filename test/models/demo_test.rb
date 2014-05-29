require "test_helper"

describe Demo do
  let(:demo) { Demo.new }

  it "must be valid" do
    demo.must_be :valid?
  end
end
