class RSpecTest
  def txt
    "passed"
  end
end

describe "My Test" do
  it "should say 'passed' when it receives when it receives the txt() message" do
    test = RSpecTest.new
    msg = test.txt
    expect(msg).to eq('passed')
  end
end
