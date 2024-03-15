class Solution {
  List<int> productExceptSelf(List<int> n) {
    int f = n.indexOf(0),total = 1,k=n.length; 
    final List<int> res =List.filled(k,0);
    for(int i in n)if(i!=0)total*=i;
    if(f!=-1){
      if(n.lastIndexOf(0)==f) res[f]=total;
      return res;
    }
    for(int i=0;i<k;i++)res[i]=total~/n[i];
    return res;
  }
}