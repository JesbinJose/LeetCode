class Solution {
  int maxScoreWords(List<String> words, List<String> letters, List<int> score) {
    if (words.isEmpty || letters.isEmpty || score.isEmpty) return 0;
    final count = List.filled(score.length, 0);
    letters.forEach((letter) => count[letter.charIndex]++);
    int backtrack(int index) {
      var maxScore = 0;
      for (var i = index; i < words.length; i++) {
        var curr = 0;
        var isValid = true;
        for (final letter in words[i].split('')) {
          count[letter.charIndex]--;
          curr += score[letter.charIndex];
          if (count[letter.charIndex] < 0) isValid = false;
        }
        if (isValid) {
          curr += backtrack(i + 1);
          maxScore = max(curr, maxScore);
        }
        words[i].split('').forEach((letter) => count[letter.charIndex]++);
      }
      return maxScore;
    }
    return backtrack(0);
  }
}

extension on String {
  int get charIndex => this.codeUnitAt(0) - 'a'.codeUnitAt(0);
}