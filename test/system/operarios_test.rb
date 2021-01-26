require "application_system_test_case"

class OperariosTest < ApplicationSystemTestCase
  setup do
    @operario = operarios(:one)
  end

  test "visiting the index" do
    visit operarios_url
    assert_selector "h1", text: "Operarios"
  end

  test "creating a Operario" do
    visit operarios_url
    click_on "New Operario"

    fill_in "Costohora", with: @operario.CostoHora
    fill_in "Tipooperario", with: @operario.TipoOperario
    click_on "Create Operario"

    assert_text "Operario was successfully created"
    click_on "Back"
  end

  test "updating a Operario" do
    visit operarios_url
    click_on "Edit", match: :first

    fill_in "Costohora", with: @operario.CostoHora
    fill_in "Tipooperario", with: @operario.TipoOperario
    click_on "Update Operario"

    assert_text "Operario was successfully updated"
    click_on "Back"
  end

  test "destroying a Operario" do
    visit operarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operario was successfully destroyed"
  end
end
