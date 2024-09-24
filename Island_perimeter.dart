class Solution {
  int islandPerimeter(List<List<int>> grid) {
    int result = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[i].length; j++) {
        if (grid[i][j] == 1) {
          result += 4;
          if (i < grid.length - 1 && grid[i + 1][j] == 1) {
            result -= 2;
          }
          if (j < grid[i].length - 1 && grid[i][j + 1] == 1) {
            result -= 2;
          }
        }
      }
    }
    return result;
  }
}
