class Solution {
  int maxDepth(String s) {
    int maxDepthOFString=0;
    int depth =0;
    for(String i in s.split('')){
      if(i=='(') depth++;
      else if(i==')') depth--;
      maxDepthOFString = max(maxDepthOFString,depth);
    }
    return maxDepthOFString;
  }
}