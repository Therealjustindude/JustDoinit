require 'rails_helper'

RSpec.describe "doinits/new", type: :view do
  before(:each) do
    assign(:doinit, Doinit.new(
      title: "MyString",
      user: nil,
      importance: 1
    ))
  end

  it "renders new doinit form" do
    render

    assert_select "form[action=?][method=?]", doinits_path, "post" do

      assert_select "input[name=?]", "doinit[title]"

      assert_select "input[name=?]", "doinit[user_id]"

      assert_select "input[name=?]", "doinit[importance]"
    end
  end
end
