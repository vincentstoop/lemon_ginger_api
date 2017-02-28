require 'rails_helper'

describe Category do
  it { is_expected.to have_and_belong_to_many(:recipes) }
end
