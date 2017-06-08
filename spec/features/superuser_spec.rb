require 'rails_helper'

describe "admin" do

  let(:admin) { create :admin, email: "admin@admin.com", password: "1234qwerty" }

  let!(:student1) { create :student, name: "student1", email: "student1@student.com", password: "1234qwerty", admin: false }
  let!(:student2) { create :student, name: "student2", email: "student2@student.com", password: "1234qwerty", admin: false }

  it "shows correctly the student_list" do
    visit students_list_url

    expect(page).to have_text("student1")
    expect(page).to have_text("student2")
  end

  it "upgrades student into admin" do
    visit students_list_url

    expect(page).to_not have_text("Downgrade")

    first('button', text: 'Upgrade').click
    expect(page).to have_text("Downgrade")
  end
end
