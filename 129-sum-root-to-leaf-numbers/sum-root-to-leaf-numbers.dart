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
  int sumNumbers(TreeNode? root,[int curSum = 0]) {
    if(root==null)return 0;
    int sum = (curSum*10) + root.val;
    if(root.left==null&&root.right==null) return sum;
    return sumNumbers(root?.left,sum)+sumNumbers(root?.right,sum);
  }
}