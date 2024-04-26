class Solution {
  ListNode? swapPairs(ListNode? head) {
    if (head == null || head.next == null) return head;
    final ListNode? newHead = head.next;
    head.next = swapPairs(newHead!.next);
    newHead.next = head;
    return newHead;
  }
}
