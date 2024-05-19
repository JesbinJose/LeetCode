class Solution {
  int maxWidthOfVerticalArea(List<List<int>> points) {
    points.sort((a,b) => a[0].compareTo(b[0]));
    int res = 0;
    for (int i = 1; i < points.length; i++) res = max(res,  points[i][0] - points[i - 1][0]);
    return res;
  }
}