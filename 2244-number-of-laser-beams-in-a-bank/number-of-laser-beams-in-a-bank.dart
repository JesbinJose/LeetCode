class Solution {
  int numberOfBeams(List<String> bank) {
    int res = 0;
    int preLazer = 0;
    for(String row in bank){
      int curLazer = 0;
      for(String i in row.split('')) if(i=='1') curLazer++;
      res += curLazer * preLazer;
      if(curLazer!=0) preLazer = curLazer;
    }
    return res;
  }
}