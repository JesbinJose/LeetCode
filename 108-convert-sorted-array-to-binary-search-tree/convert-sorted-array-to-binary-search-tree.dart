import 'dart:collection';
class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    Queue<List<dynamic>> queue = Queue();
    TreeNode? root;
    int left = 0;
    int right = nums.length - 1;
    int mid = (left + right) ~/ 2;
    root = TreeNode(nums[mid]);
    queue.add([root, left, mid - 1]);
    queue.add([root, mid + 1, right]);
    while (queue.isNotEmpty) {
      var nodeRange = queue.removeFirst();
      TreeNode? parent = nodeRange[0];
      int leftIdx = nodeRange[1];
      int rightIdx = nodeRange[2];
      if (leftIdx <= rightIdx) {
        mid = (leftIdx + rightIdx) ~/ 2;
        TreeNode newNode = TreeNode(nums[mid]);
        if (nums[mid] < parent!.val) parent.left = newNode;
        else parent.right = newNode;
        queue.add([newNode, leftIdx, mid - 1]);
        queue.add([newNode, mid + 1, rightIdx]);
      }
    }
    return root;
  }
}