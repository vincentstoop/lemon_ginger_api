require 'rails_helper'

describe Ingredient do
  it { is_expected.to have_and_belong_to_many(:recipes) }
end
