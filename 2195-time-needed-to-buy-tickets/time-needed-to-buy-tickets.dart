class Solution {
  int timeRequiredToBuy(List<int> t, int k) {
    int res = 0;
    for(int index = 0;t[k]!=0;index++){
      int i = index%t.length;
      if(t[i]!=0){
        t[i]--;
        res++;
      }
    }
    return res;
  }
}