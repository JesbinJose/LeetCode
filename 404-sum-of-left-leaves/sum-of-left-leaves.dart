class Solution {
  int sumOfLeftLeaves(TreeNode? root) {
    int helper(TreeNode? root, bool isLeft) {
      if (root == null) return 0;
      if (isLeft && root.left == null && root.right == null) return root.val;
      return helper(root.right, false) + helper(root.left, true);
    }
    return helper(root, false);
  }
}