require 'spec_helper'

describe "seasons/edit" do
  before(:each) do
    @season = assign(:season, stub_model(Season,
      :number => 1
    ))
  end

  it "renders the edit season form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seasons_path(@season), :method => "post" do
      assert_select "input#season_number", :name => "season[number]"
    end
  end
end
