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

  describe '#get_user_input' do
    it 'returns User Input as //user_input attribute' do
      user = User.new
      user.stub(:gets) { "-10, 10\n" }
      user.get_user_input
      expect(user.user_input).to eq "-10, 10"
    end
  end

  describe '#find_x' do
    it 'changes the Users Coordinates "x" attribute to the first coordinate of the //user_input attribute' do
      @user = User.new
  #     @user.stub(:gets) { "-10, 10\n" }
  #     @user.get_user_input
      # expect(user.coordinate.x).to eq "-10, 10"
    end
  end
  #
  describe '#find_y' do
    it 'returns the Users Coordinates "y" attribute to the second coordinate of the //user_input attribute' do
  #     @user = User.new
  #     @user.stub(:gets) { "-10, 10\n" }
  #     @user.get_user_input
  #     expect(@user.user_input).to eq "-10, 10"
    end
  end

end
