class Solution {
  int maxDepth(String s) {
    int maxDepthOFString = 0;
    for(int i =0,depth =0;i<s.length;i++,maxDepthOFString = max(maxDepthOFString,depth))
      if(s[i]=='(') depth++;
      else if(s[i]==')') depth--;
    return maxDepthOFString;
  }
}