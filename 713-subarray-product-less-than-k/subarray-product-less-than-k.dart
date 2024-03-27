class Solution {
  int numSubarrayProductLessThanK(List<int> n, int k) {
    int res =0;
    for(int s=0,e=0,p=1;e<n.length;){
      for(p*=n[e++];s<e&&p>=k;p~/=n[s++]);
      if(p<k)res+=e-s;
    }
    return res;
  }
}