class Solution {
  int kthFactor(int n, int k) {
    int i = 0,l = n~/2;
    while(i<=l){
      if(n%++i==0&&--k==0) return i;
    }
    if(k==1) return n;
    return -1;
  }
}