require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :message => "MyText",
        :motive => "Motive",
        :user => nil
      ),
      Ticket.create!(
        :message => "MyText",
        :motive => "Motive",
        :user => nil
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Motive".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
