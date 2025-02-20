class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String,int> freq = {};
    int max = 0, curMax =0;
    for(int i = 0;i<s.length;i++){
        if(freq[s[i]]==null){
            curMax++;
            freq[s[i]] = i;
        }else{
            max = max > curMax ? max : curMax;
            curMax = 0;
            i = freq[s[i]]!;
            freq = {};
        }
    }
    return max > curMax ? max : curMax;
  }
}