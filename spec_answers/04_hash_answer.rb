# frozen_string_literal: true

# rubocop:disable Layout/LineLength, Metrics/BlockLength
describe Hash do
  # It is recommended to implicitly define the subject with an alias
  # https://relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject(:favorites) { { 'color' => 'blue', 'food' => 'fajitas' } }

  context 'when you implicitly define the subject' do
    it 'should be correct with either variable' do
      expect(subject['food']).to eq('fajitas')
      # Using the explicit name is semantically easier to read, therefore preferred.
      expect(favorites['food']).to eq('fajitas')
    end
  end

  # The include matcher works on any object that would responds to #include? method
  # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/include-matcher
  context 'when changing favorite color to forest green' do
    it 'should be include green' do
      favorites['color'] = 'forest green'
      expect(favorites['color']).to include('green')
    end
  end

  context 'when testing for true or false values' do
    let(:car_features) do
      {
        'remote_start?' => true,
        'parking_camera' => true,
        'assisted_steering?' => false
      }
    end

    it 'should be true' do
      expect(car_features['remote_start?']).to be true
    end

    it 'should be false' do
      expect(car_features['assisted_steering?']).to be false
    end
  end
end

# ASSIGNMENT

describe Hash do
  subject(:my_car) do
    {
      'make' => 'Volkswagon',
      'model' => 'Jetta',
      'year' => 2017,
      'parking_camera?' => true,
      'assisted_steering?' => false
    }
  end

  # remove the 'x' before running this test
  xit 'should be newer then 2015' do
    # Write a test that verifies above statement
    expect(my_car['year']).to be > 2015 # REMOVE
  end

  # remove the 'x' before running this test
  xit 'should have a parking camera' do
    # Write a test that verifies above statement
    expect(my_car['parking_camera?']).to be true # REMOVE
  end

  # remove the 'x' before running this test
  xit 'should not have assisted steering' do
    # Write a test that verifies above statement
    expect(my_car['assisted_steering?']).to be false # REMOVE
  end
end
# rubocop:enable Layout/LineLength, Metrics/BlockLength