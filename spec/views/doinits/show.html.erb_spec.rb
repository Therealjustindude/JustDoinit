require 'rails_helper'

RSpec.describe "doinits/show", type: :view do
  before(:each) do
    @doinit = assign(:doinit, Doinit.create!(
      title: "Title",
      user: nil,
      importance: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
