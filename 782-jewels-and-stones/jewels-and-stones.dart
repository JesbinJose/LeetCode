class Solution {
  int numJewelsInStones(String j, String s) {
    Map<String,bool> map = {};
    int ans = 0;
    for(String i in j.split('')) map[i]=true;
    for(String i in s.split(''))map[i]==true?ans++:ans;
    return ans;
  }
}