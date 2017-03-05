def count_routes(m, n)
  grid = Array.new(m+1) { [1] }

  (n+1).times { |j| grid[0][j] = 1 }

  m.times { |i| n.times { |j| grid[i+1][j+1] = grid[i][j+1] + grid[i+1][j] }}

  return grid[m][n]
end

count_routes(20, 20)
