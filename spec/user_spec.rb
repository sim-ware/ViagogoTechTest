require 'user'

describe User do

  context "#initialize" do
    it "is initialized with empty attributes by default" do
      user = User.new
      expect(user.user_input).to eq ''
      expect(user.coordinate.x).to eq 0
      expect(user.coordinate.y).to eq 0
    end
  end

  describe '#take_user_input' do
    it 'returns User Input as //user_input attribute' do
      user = User.new
      user.stub(:gets) { "-10, 10\n" }
      user.stub(:puts) { "Please Input Coordinates:" }
      user.take_user_input
      expect(user.user_input).to eq "-10, 10"
    end
  end

  describe '#check_and_set_coordinates' do
    it 'changes the Users Coordinates "x" attribute to the first coordinate of the //user_input attribute' do
      user = User.new
      user.stub(:gets) { "-10, 10\n" }
      user.stub(:puts) { "Please Input Coordinates:" }
      user.take_user_input
      user.check_and_set_coordinates
      expect(user.coordinate.x).to eq "-10"
      expect(user.coordinate.y).to eq "10"
    end

    it 'doesnt change Coordinate x/y attributes if coordinate is less than -10 ' do
      user = User.new
      user.stub(:gets) { "-11, -11\n" }
      user.stub(:puts) { "Please Input Coordinates:" }
      user.take_user_input
      user.check_and_set_coordinates
      expect(user.coordinate.x).to eq 0
      expect(user.coordinate.y).to eq 0
    end

    it 'doesnt change Coordinate x/y attributes if coordinate is greater than 10' do
      user = User.new
      user.stub(:gets) { "11, 11\n" }
      user.stub(:puts) { "Please Input Coordinates:" }
      user.take_user_input
      user.check_and_set_coordinates
      expect(user.coordinate.x).to eq 0
      expect(user.coordinate.y).to eq 0
    end
  end

end
