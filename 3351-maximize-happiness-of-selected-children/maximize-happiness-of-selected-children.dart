class Solution {
  int maximumHappinessSum(List<int> happiness, int k) {
    happiness.sort();
    int l = happiness.length-k-1, res = 0,m=0;
    for(int i = happiness.length-1;i>l;i--) res = max(res,res+happiness[i]-m++);
    return res;
  }
}