class Solution {
  int maxDepth(String s) {
    int maxDepthOFString = 0;
    for(int i =0,depth =0;i<s.length;i++){
      if(s[i]=='(') depth++;
      else if(s[i]==')') depth--;
      if(maxDepthOFString<depth) maxDepthOFString = depth;
    }
    return maxDepthOFString;
  }
}