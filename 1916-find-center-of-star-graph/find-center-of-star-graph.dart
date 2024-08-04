class Solution {
  int findCenter(List<List<int>> edges) {
    return edges[1].contains(edges[0][1]) ? edges[0][1] : edges[0][0];
  }
}