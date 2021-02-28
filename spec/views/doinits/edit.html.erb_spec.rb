require 'rails_helper'

RSpec.describe "doinits/edit", type: :view do
  before(:each) do
    @doinit = assign(:doinit, Doinit.create!(
      title: "MyString",
      user: nil,
      importance: 1
    ))
  end

  it "renders the edit doinit form" do
    render

    assert_select "form[action=?][method=?]", doinit_path(@doinit), "post" do

      assert_select "input[name=?]", "doinit[title]"

      assert_select "input[name=?]", "doinit[user_id]"

      assert_select "input[name=?]", "doinit[importance]"
    end
  end
end
