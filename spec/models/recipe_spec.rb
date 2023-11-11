require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:image) }
end