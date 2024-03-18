class Solution {
  int findMinArrowShots(List<List<int>> points) {
    points.sort((a, b) => a[1].compareTo(b[1]));
    int result = 0, arrow = 0;
    for (List<int> i in points) {
      if (result == 0 || i[0] > arrow) {
        result++;
        arrow = i[1];
      }
    }
    return result;
  }
}