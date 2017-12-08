require 'rails_helper'

RSpec.describe "answer_lists/show", type: :view do
  before(:each) do
    @answer_list = assign(:answer_list, AnswerList.create!(
      :question => nil,
      :alternative => nil,
      :simulation_answer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
