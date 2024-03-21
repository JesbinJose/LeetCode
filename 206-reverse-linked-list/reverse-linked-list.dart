/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? listNode;
    while (head != null) {
      listNode = ListNode(head.val,listNode);
      head = head.next;
    }
    return listNode;
  }
}