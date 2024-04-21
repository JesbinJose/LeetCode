class Solution {
  bool validPath(int n, List<List<int>> edges, int source, int destination) {
    Map<int, List<int>> graph = {};
    for (List<int> edge in edges) {
      graph[edge[0]] ??= [];
      graph[edge[0]]?.add(edge[1]);
      graph[edge[1]] ??= [];
      graph[edge[1]]!.add(edge[0]);
    }
    Set<int> visited = {};
    return dfs(graph, visited, source, destination);
  }

  bool dfs(Map<int, List<int>> graph, Set<int> visited, int source, int destination) {
    if (source == destination) return true;
    List<int> stack = [source];
    while (stack.isNotEmpty) {
      int current = stack.removeLast();
      if (!visited.contains(current)) {
        visited.add(current);
        if (current == destination) return true;
        if (graph.containsKey(current)) 
          for (int neighbor in graph[current]!) stack.add(neighbor);
      }
    }
    return false;
  }
}
