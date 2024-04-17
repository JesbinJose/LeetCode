class Solution {
  String smallestFromLeaf(TreeNode? root) {
    String res = '{';
    void dfs(TreeNode? node, String path) {
      if (node == null) return;
      path = '${String.fromCharCode(97 + node.val)}$path';
      if (node.left == null && node.right == null) {
        res = path.compareTo(res) < 0 ? path : res;
      }
      dfs(node.left, path);
      dfs(node.right, path);
    }
    dfs(root, '');
    return res;
  }

}