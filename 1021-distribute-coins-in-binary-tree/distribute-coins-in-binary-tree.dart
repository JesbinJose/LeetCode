class Solution {
  int moves = 0;
  int distributeCoins(TreeNode? root) {
    dfs(root);
    return moves;
  }

  int dfs(TreeNode? node) {
    if (node == null) return 0;
    int leftExcess = dfs(node.left);
    int rightExcess = dfs(node.right);
    moves += leftExcess.abs() + rightExcess.abs();
    return node.val + leftExcess + rightExcess - 1;
  }
}
