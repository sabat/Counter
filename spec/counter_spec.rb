require 'spec_helper'
require 'counter'

describe Counter do
  it "should have a VERSION constant" do
    expect(Counter::VERSION).to_not be_empty
    expect(Counter::VERSION).to match(/^[\w\d\.\-\_\/]+$/)
  end


end


