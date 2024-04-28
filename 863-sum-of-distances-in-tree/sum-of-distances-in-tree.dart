class Solution {
  List<int> sumOfDistancesInTree(int n, List<List<int>> edges) {
    List<List<int>> graph = List.generate(n, (_) => []);
    List<int> count = List.filled(n, 1);
    List<int> ans = List.filled(n, 0);
    for (List<int> edge in edges) {
      graph[edge[0]].add(edge[1]);
      graph[edge[1]].add(edge[0]);
    }
    List<List> stack = [[0, -1, false]];
    while (stack.isNotEmpty) {
      List top = stack.last;
      int node = top[0];
      int parent = top[1];
      bool isProcessed = top[2];
      if (!isProcessed) {
        top[2] = true;
        for (var child in graph[node]) if (child != parent) stack.add([child, node, false]); 
      } else {
        stack.removeLast(); 
        for (var child in graph[node]) 
          if (child != parent) {
            count[node] += count[child];
            ans[node] += ans[child] + count[child];
          }
      }
    }
    stack = [[0, -1, false]];
    while (stack.isNotEmpty) {
      List top = stack.last;
      int node = top[0];
      int parent = top[1];
      bool isProcessed = top[2];
      if (!isProcessed) {
        top[2] = true;
        for (var child in graph[node]) 
          if (child != parent) {
            ans[child] = ans[node] - count[child] + n - count[child];
            stack.add([child, node, false]); 
          }
      } else stack.removeLast(); 
    }
    return ans;
  }
}