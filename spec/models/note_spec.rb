require 'spec_helper'

describe Note do

  it "should have a valid factory" do
    Factory.build(:note).should be_valid
  end

end
