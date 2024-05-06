import 'dart:collection';
 
class Solution {
  ListNode? removeNodes(ListNode? head) {
    final dummyHead = ListNode(100000);
    final queue = Queue<ListNode>();
    queue.add(dummyHead);
    while (head != null) {
      while (queue.isNotEmpty && queue.last.val < head.val) {
        queue.removeLast();
      }
      queue.last.next = head;
      queue.add(head);
      head = head.next;
    }
    return dummyHead.next;
  }
}