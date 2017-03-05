
def y_count
columns = ("a" .. "u").to_a
rows = (0 .. 20).to_a
paths = Hash.new
i = 0
while i <= 20
paths[i] = columns[i]
i += 1
end
paths
end#y_count

def routes
lattice_paths = []
paths = y_count
puts paths.inspect
x = 0
y = 0

  while x < 2
  x += 1
  lattice_paths << [x, paths[y]]
  end

  while y < 2
  y += 1
  lattice_paths << [x, paths[y]]
  end
lattice_paths
end#routes

routes
