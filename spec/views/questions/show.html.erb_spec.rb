require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :statement => "MyText",
      :status => 2,
      :source => "Source",
      :user => nil,
      :area => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
  end
end
