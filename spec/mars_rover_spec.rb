require 'mars_rover'

describe 'MarsRover' do
  context 'given an initial starting point and a set direction' do
    # You are given the initial starting point (x,y)
    # of a rover and the direction (N,S,E,W) it is facing.

    it 'returns the initial position and the direction' do
      # arrange
      starting_point_x = 0
      starting_point_y = 0
      direction = 'N'
      # We will open a concern about what happens if the direction given to the rover
      # is not a valid one. Does the rover break? Would NASA go to bankrupcy?

      # act
      rover = MarsRover.new(
        starting_point_x,
        starting_point_y,
        direction
      )

      # assert
      expect(rover.x).to eq(starting_point_x)
      expect(rover.y).to eq(starting_point_y)
      expect(rover.direction).to eq(direction)
    end
  end
end
