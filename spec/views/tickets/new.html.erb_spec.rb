require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :message => "MyText",
      :motive => "MyString",
      :user => nil
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "textarea[name=?]", "ticket[message]"

      assert_select "input[name=?]", "ticket[motive]"

      assert_select "input[name=?]", "ticket[user_id]"
    end
  end
end
