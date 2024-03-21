class Solution {
  List<int> findSubstring(String s, List<String> words) {
    List<int> result = [];
    if (s.isEmpty || words.isEmpty) return result;
    int wl = words[0].length , wc = words.length;
    int t = wl * wc;
    if (s.length < t) return result;
    Map<String, int> w = {};
    for (String word in words)  w[word] = (w[word]??0) + 1;
    for (int i = 0,j = 0; i <= s.length - t; i++,j=0) {
      Map<String, int> seenWords = {};
      for (; j < wc ; j++) {
        String currentWord = s.substring(i + j * wl, i + (j + 1) * wl);
        if (w[currentWord]!=null) {
          seenWords[currentWord] = (seenWords[currentWord]??0) + 1;
          if (seenWords[currentWord]! > w[currentWord]!) break;
        } else break; 
      }
      if (j == wc) result.add(i);
    }
    return result;
  }
}