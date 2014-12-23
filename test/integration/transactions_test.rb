require "test_helper"

feature "listing transactions" do

  subject { find("#transactions tr.transaction") }

  let!(:transaction) { Transaction.create!(payee: "Livingood's") }

  before do
    visit root_path
  end

  scenario "viewing a transaction" do
    subject.find(".payee").must_have_content transaction.payee
  end

end
