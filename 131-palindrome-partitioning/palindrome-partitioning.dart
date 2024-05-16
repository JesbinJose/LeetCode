class Solution {
  List<List<String>> partition(String s) {
    List<List<String>> res = [];
    List<String> temp = [];
    void helper(int index){
      if(index==s.length) res.add([...temp]);
      else for(int i = index ; i < s.length ; i++)
          if(isPlaidrome(s,index,i)){
            temp.add(s.substring(index,i+1));
            helper(i+1);
            temp.removeLast();
          }
    }
    helper(0);
    return res;
  }
  
  bool isPlaidrome(String s,int l,int r){
    while(l<r) if(s[r--]!=s[l++]) return false;
    return true;
  }
}