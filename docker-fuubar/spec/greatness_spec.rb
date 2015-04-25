require 'rspec'

RSpec.describe "greatness" do
  200.times do
    it "is easy to achieve" do
      sleep 0.5
      expect(true).to eql(true)
    end
  end
end
