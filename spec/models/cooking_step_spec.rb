require 'rails_helper'

describe CookingStep do
  it { is_expected.to belong_to(:recipe) }
end
