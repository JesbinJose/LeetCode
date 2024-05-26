class Solution {
  List<String> wordBreak(String s, List<String> wordDict) {
    Set<String> wordSet =Set.from(wordDict);
    Map<int, List<String>>memo = {};
    List<String> backtrack(int start) {
      if (memo.containsKey(start))return memo[start]!;
      if (start == s.length) return [""];
      List<String> result = [];
      for(int end = start + 1; end <= s.length; end++) {
        String word = s.substring(start, end);
        if(wordSet.contains(word)) 
          for(String sub in backtrack(end)) result.add(word + (sub.isEmpty ? "" : " " + sub));
      }
      memo[start] = result;
      return result;
    }
    return backtrack(0);
  }
}