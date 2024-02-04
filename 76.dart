class Solution {
  String minWindow(String s, String t) {
    Map<String, int> tf = {};
    for (int i = 0; i < t.length; i++) tf[t[i]] = (tf[t[i]] ?? 0) + 1;
    int rc = tf.length; 
    int left = 0; 
    double minLen = double.infinity; 
    int start = 0; 
    int fc = 0; 
    Map<String, int> wf = {}; 
    for (int i = 0; i < s.length; i++) {
      String c = s[i];
      wf[c] = (wf[c] ?? 0) + 1;
      if (tf[c]!=null && wf[c] == tf[c]) fc++;
      while (left <= i && fc == rc) {
        if (i - left + 1 < minLen) {
          minLen = i - left + 1;
          start = left;
        }
        String lc = s[left];
        wf[lc] = (wf[lc] ?? 0) - 1;
        if (tf[lc]!=null && wf[lc]! < tf[lc]!) fc--;
        left++;
      }
    }
    return minLen >s.length ? "" : s.substring(start, start + minLen.toInt());
  }
}
