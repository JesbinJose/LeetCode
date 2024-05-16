/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool evaluateTree(TreeNode? root) {
    if(root==null) return false;
    if(root.val<2) return root.val != 0;
    return root.val==2 ? evaluateTree(root.left) || evaluateTree(root.right) : evaluateTree(root.left) && evaluateTree(root.right);
  }
}