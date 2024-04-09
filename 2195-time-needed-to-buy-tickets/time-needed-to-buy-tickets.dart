class Solution {
  int timeRequiredToBuy(List<int> t, int k) {
    int res = 0;
    for(int index = 0;t[k]!=0;index++){
      if(t[index%t.length]!=0){
        t[index%t.length]--;
        res++;
      }
    }
    return res;
  }
}