require 'rails_helper'

RSpec.describe Task, :type => :model do
  subject {
    described_class.new(title: "Anything",
                        description: "Lorem ipsum",
                        priority: 1,
                        due_date: Date.today.year,
                        completed: false)
  }
  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a priority" do
    subject.priority = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a due_date" do
    subject.due_date = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a completed" do
    subject.completed = nil
    expect(subject).to_not be_valid
  end
end
