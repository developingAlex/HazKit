require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :name => "MyString",
      :home_location => "MyString",
      :profile_image_data => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[home_location]"

      assert_select "textarea[name=?]", "profile[profile_image_data]"
    end
  end
end
