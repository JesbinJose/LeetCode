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
  TreeNode? sortedArrayToBST(List<int> nums) => nums.isNotEmpty?TreeNode(nums[nums.length ~/ 2],sortedArrayToBST(nums.sublist(0, nums.length ~/ 2)),sortedArrayToBST(nums.sublist(nums.length ~/ 2 + 1, nums.length),)):null;
}
