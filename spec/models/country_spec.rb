require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should validate_presence_of(:country_id) }
  it { should validate_uniqueness_of(:country_id) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end