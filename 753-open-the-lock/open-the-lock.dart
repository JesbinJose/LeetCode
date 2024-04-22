import 'dart:collection';

class Solution {
  int openLock(List<String> deadends, String target) {
    Set<String> deadSet = deadends.toSet();
    Set<String> visited = Set();
    Queue<String> queue = Queue();
    if (deadSet.contains("0000")) return -1;
    queue.add("0000");
    visited.add("0000");
    int level = 0;
    while (queue.isNotEmpty) {
      int size = queue.length;
      for (int i = 0; i < size; i++) {
        String current = queue.removeFirst();
        if (current == target) return level;
        for (int j = 0; j < 4; j++) 
          for (int d = -1; d <= 1; d += 2) {
            int nextDigit = (current.codeUnitAt(j) - 48 + d + 10) % 10;
            String next = current.substring(0, j) + nextDigit.toString() + current.substring(j + 1);
            if (!visited.contains(next) && !deadSet.contains(next)) {
              queue.add(next);
              visited.add(next);
            }
          }
      }
      level++;
    }
    return -1;
  }
}
