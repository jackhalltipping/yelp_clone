require 'spec_helper'

describe Restaurant, type: :model do
  it { is_expected.to have_many :reviews }

  it 'cannot have too short a name' do
    restaurant = Restaurant.new(name: 'kf')
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end

end
