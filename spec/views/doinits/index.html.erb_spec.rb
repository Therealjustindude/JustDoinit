require 'rails_helper'

RSpec.describe "doinits/index", type: :view do
  before(:each) do
    assign(:doinits, [
      Doinit.create!(
        title: "Title",
        user: nil,
        importance: 2
      ),
      Doinit.create!(
        title: "Title",
        user: nil,
        importance: 2
      )
    ])
  end

  it "renders a list of doinits" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
