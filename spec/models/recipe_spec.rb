require 'rails_helper'

describe Recipe do
  it { is_expected.to have_and_belong_to_many(:categories) }
  it { is_expected.to have_and_belong_to_many(:ingredients) }
  it { is_expected.to have_and_belong_to_many(:users) }
  it { is_expected.to have_many(:cooking_steps) }
  it { is_expected.to have_many(:photos) }
  it { is_expected.to belong_to(:admin) }
end
