
#require "rails_helper"

#commented out because I wanted to keep the wrong version as reference
#RSpec.describe "The math below is wrong..." do
#  it "should equal 42 but we said 43" do
#    expect(6 * 7).to eq(43)
#  end
#end


require "rails_helper"
#correct version of previous test, tests the value of 6*7
RSpec.describe "The math below is right..." do
  it "should equal 42" do
    expect(6 * 7).to eq(42)
  end
end



require "rails_helper"
#tests empty string
RSpec.describe "hello spec" do
  # ...
  describe String do
    let(:string) { String.new }
    it "should provide an empty string" do
      expect(string).to eq("")
    end
  end
 end

