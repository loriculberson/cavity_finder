class Cavity

  def cavity_finder(data)
    map_size = data[0].to_i
    grid = data[1..-1]

    1.upto(map_size-2) do |r|
      row = grid[r]
      c = 1
      while c < map_size-1
        current = grid[r][c]
        left    = grid[r][c-1]
        right   = grid[r][c+1]
        above   = grid[r-1][c]
        below   = grid[r+1][c]

        if is_cavity?(current, left, right, above, below)
          grid[r][c] = 'X'
        end
        c+=1
      end
    end
    grid
  end

  def is_cavity?(current, left, right, above, below)
    current > left && current > right && current > above && current > below
  end
end
