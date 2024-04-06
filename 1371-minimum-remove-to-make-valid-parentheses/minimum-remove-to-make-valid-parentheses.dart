class Solution {
  String minRemoveToMakeValid(String s) {
    List<String> ans=s.split("");
    int level=0;
    for(int i=0;i<s.length;i++)
        if(s[i]=='(')level++;
        else if(s[i]==")")level==0?ans.remove(')'):level--;
    for(int i=ans.length-1;level>0;i--)
        if(ans[i]=='('){
            ans.removeAt(i);
            level--;
        }
    return ans.join();
  }
}