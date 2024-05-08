class Solution{
  List<String> findRelativeRanks(List<int> score) {
    List<String> ranks = List.filled(score.length,'');
    Map<int, int> scoreIndexMap = {};
    for (int i = 0; i < score.length; i++) scoreIndexMap[score[i]] = i;
    List<int> sortedScores = score.toList()..sort((a, b) => b.compareTo(a));
    for (int i = 0; i < sortedScores.length; i++) {
      int athleteScore = sortedScores[i];
      int athleteIndex = scoreIndexMap[athleteScore]!;
      String rank;
      if (i == 0) rank = "Gold Medal";
      else if (i == 1) rank = "Silver Medal";
      else if (i == 2) rank = "Bronze Medal";
      else rank = (i + 1).toString();
      ranks[athleteIndex] = rank;
    }
    return ranks;
  }
}