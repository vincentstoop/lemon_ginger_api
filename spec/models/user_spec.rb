require 'rails_helper'

describe User do
  it { is_expected.to have_and_belong_to_many(:recipes) }

end
