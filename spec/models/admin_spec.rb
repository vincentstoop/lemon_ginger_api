require 'rails_helper'

describe Admin do
  it { is_expected.to have_many(:recipes) }
end
