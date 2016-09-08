# Implement: public void dilate(int[][] grid)
#
# Given a square 2D array of integers with the value 0 or 1
# (represented in the grid below by blank or 1),
# dilate the grid so that anything adjacent to a 1
# will also be a 1.
# In the example below, grid 1 is the input and grid 2 is
# the same grid after being passed as an argument to dilate.
# Grid 3 shows the changes as *s.
#
# int [][] grid:      dilate(grid):     New Points as (*)
#  _ _ _ _ _ _ _ _     _ _ _ _ _ _ _ _     _ _ _ _ _ _ _ _
# |_|_|_|_|_|_|_|_|   |_|_|_|_|_|_|_|_|   |_|_|_|_|_|_|_|_|
# |_|_|_|_|_|_|_|_|   |_|_|_|1|_|_|_|_|   |_|_|_|*|_|_|_|_|
# |_|_|_|1|_|_|_|_|   |_|_|1|1|1|_|_|_|   |_|_|*|1|*|_|_|_|
# |_|_|_|_|1|_|_|_|   |_|_|1|1|1|1|_|_|   |_|_|*|*|1|*|_|_|
# |_|_|1|_|_|_|_|_|   |_|1|1|1|1|_|_|_|   |_|*|1|*|*|_|_|_|
# |_|_|_|_|_|_|_|_|   |_|_|1|_|_|_|_|_|   |_|_|*|_|_|_|_|_|
# |_|_|_|_|_|_|_|_|   |_|_|_|_|_|_|_|_|   |_|_|_|_|_|_|_|_|
#
grid = [
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0]
]

def dilate_ones(grid)
  # first_grid = grid
  new_grid = Marshal.load(Marshal.dump(grid))
  grid.each_with_index do |row, row_index|
    row.each_with_index do |value, value_index|
      if value == 1
        # puts "At value #{value_index} and row #{row_index}"
        new_grid[row_index][value_index-1] = "*" if grid[row_index][value_index-1]
        # puts "Left value is #{row[value_index-1]} with value index #{value_index-1} and row index #{row_index}"
        new_grid[row_index][value_index+1] = "*" if grid[row_index][value_index+1]
        # puts "Right value is #{row[value_index+1]} with index #{value_index+1} and row index #{row_index}"
        new_grid[row_index-1][value_index] = "*" if grid[row_index-1][value_index-1]
        # puts "Top value is #{grid[row_index-1][value_index]} with row index #{row_index-1}"
        new_grid[row_index+1][value_index] = "*" if grid[row_index+1][value_index+1]
        # puts "Bottom value is #{grid[row_index+1][value_index]} with row index #{row_index+1}"
      end
    end
  end
  new_grid.each { |row| p row}
  p "/////////////"
  grid.each { |row| p row}
end

dilate_ones(grid)
