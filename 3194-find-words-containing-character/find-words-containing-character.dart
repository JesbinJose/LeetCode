class Solution {
  List<int> findWordsContaining(List<String> words, String x) {
    List<int> res = [];
    for(var (i,word) in words.indexed)if(word.contains(x))res.add(i);
    return res;
  }
}