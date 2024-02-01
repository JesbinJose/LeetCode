class Solution {
  int numberOfPoints(List<List<int>> nums) {
      Set<int> set = {};
      nums.forEach((item){
        for (int j = item[0]; j <= item[1]; j++) set.add(j);
      });
    return  set.length;
  }
}