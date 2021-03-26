require "application_system_test_case"

class UserInformationsTest < ApplicationSystemTestCase
  setup do
    @user_information = user_informations(:one)
  end

  test "visiting the index" do
    visit user_informations_url
    assert_selector "h1", text: "User Informations"
  end

  test "creating a User information" do
    visit user_informations_url
    click_on "New User Information"

    fill_in "First name", with: @user_information.first_name
    fill_in "Last name", with: @user_information.last_name
    fill_in "Name", with: @user_information.name
    fill_in "Phone number", with: @user_information.phone_number
    click_on "Create User information"

    assert_text "User information was successfully created"
    click_on "Back"
  end

  test "updating a User information" do
    visit user_informations_url
    click_on "Edit", match: :first

    fill_in "First name", with: @user_information.first_name
    fill_in "Last name", with: @user_information.last_name
    fill_in "Name", with: @user_information.name
    fill_in "Phone number", with: @user_information.phone_number
    click_on "Update User information"

    assert_text "User information was successfully updated"
    click_on "Back"
  end

  test "destroying a User information" do
    visit user_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User information was successfully destroyed"
  end
end
