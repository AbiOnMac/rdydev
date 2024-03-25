require "rails_helper"

RSpec.describe Student, type: :model do
  context "validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:birth_date) }
    it { should validate_presence_of(:gender) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_value("valid@email.com").for(:email) }
    it { should_not allow_value("invalid_email").for(:email) }

    describe "#full_name" do
      it "returns the full name" do
        title = Title.create(name: "Mr.")
        student = FactoryBot.build(:student, first_name: "John", middle_name: "Doe", last_name: "Smith", title: title)
        expect(student.full_name).to eq("Mr. John Doe Smith")
      end

      it "returns the full name without a title" do
        student = FactoryBot.build(:student, first_name: "John", middle_name: "Doe", last_name: "Smith", title: nil)
        expect(student.full_name).to eq("John Doe Smith")
      end
    end
  end
end
