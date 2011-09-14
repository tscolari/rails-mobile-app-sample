require 'spec_helper'

describe "notes/index.html.erb" do
  before(:each) do
    assign(:notes, [
      stub_model(Note,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(Note,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
