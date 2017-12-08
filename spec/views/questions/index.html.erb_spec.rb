require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :statement => "MyText",
        :status => 2,
        :source => "Source",
        :user => nil,
        :area => 3
      ),
      Question.create!(
        :statement => "MyText",
        :status => 2,
        :source => "Source",
        :user => nil,
        :area => 3
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
