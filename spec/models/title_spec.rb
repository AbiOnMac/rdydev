require "rails_helper"

RSpec.describe Title, type: :model do
  it "is valid with a name" do
    title = Title.new(name: "Mr.")
    expect(title).to be_valid
  end
end
