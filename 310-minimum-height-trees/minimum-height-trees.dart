import 'dart:collection';
class Solution {
  List<int> findMinHeightTrees(int n, List<List<int>> edges) {
    if (n == 1) return [0];
    List<Set<int>> adj = List.generate(n, (_) => HashSet<int>());
    for (List<int> edge in edges) {
      adj[edge[0]].add(edge[1]);
      adj[edge[1]].add(edge[0]);
    }
    Queue<int> leaves = Queue<int>();
    for (int i = 0; i < n; i++) if (adj[i].length == 1) leaves.add(i);
    while (n > 2) {
      int size = leaves.length;
      n -= size;
      for (int i = 0; i < size; i++) {
        int leaf = leaves.removeFirst();
        int neighbor = adj[leaf].first;
        adj[neighbor].remove(leaf);
        if (adj[neighbor].length == 1) leaves.add(neighbor);
      }
    }
    return leaves.toList();
  }
}
