class Solution {
  ListNode? reverseKGroup(ListNode? head, int k) {
    if (head == null || k == 1) return head;
    ListNode dummy = ListNode(0,head);
    ListNode prevGroupEnd = dummy;
    while (true) {
      var [groupStart,prev] = [prevGroupEnd.next, null];
      for (int i = 0; i < k; i++,groupStart = groupStart.next) if (groupStart == null) return dummy.next;
      groupStart = prevGroupEnd.next;
      for (int i = 0; i < k; i++) {
        ListNode? nextNode = groupStart!.next;
        groupStart.next = prev;
        prev = groupStart;
        groupStart = nextNode;
      }
      prevGroupEnd.next!.next = groupStart;
      ListNode? newPrevGroupEnd = prevGroupEnd.next;
      prevGroupEnd.next = prev;
      prevGroupEnd = newPrevGroupEnd!;
    }
  }
}