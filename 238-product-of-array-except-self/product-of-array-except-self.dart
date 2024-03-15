class Solution {
  List<int> productExceptSelf(List<int> n) {
    int f = n.indexOf(0),total = 1,k=n.length; 
    if(f!=-1 && n.lastIndexOf(0)!=f)return List.filled(k,0);
    for(int i in n)if(i!=0)total*=i;
    return List.generate(k,f!=-1?(i)=>i==f?total:0:(i)=>total~/n[i]);
  }
}