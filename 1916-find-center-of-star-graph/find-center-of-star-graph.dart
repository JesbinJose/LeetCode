class Solution {
  int findCenter(List<List<int>> edges) {
    if(edges[1].contains(edges[0][1])){
      return edges[0][1];
    }else{
      return edges[0][0];
    }
  }
}