require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      :source => "MyString",
      :imageable => nil
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input[name=?]", "image[source]"

      assert_select "input[name=?]", "image[imageable_id]"
    end
  end
end
