class Cavity

  def cavity_finder(data)
    map_size = data[0].to_i
    grid = data[1..-1]

    1.upto(map_size-2) do |row|
      1.upto(map_size-2) do |column|
        grid[row][column] = 'X' if is_cavity?(grid, row, column)
      end
    end
    grid
  end

  def is_cavity?(grid, r,c)
    current = grid[r][c]
    left    = grid[r][c-1]
    right   = grid[r][c+1]
    above   = grid[r-1][c]
    below   = grid[r+1][c]
    current > left && current > right && current > above && current > below
  end
end
