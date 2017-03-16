require 'rails_helper'

describe Ingredient do
  it { is_expected.to belong_to(:recipe) }
end
