class Solution {
  ListNode? reverseBetween(ListNode? head, int left, int right) {
    if (head == null || left == right) return head;
    ListNode? dummy = ListNode(0);
    dummy.next = head;
    ListNode? preLeft = dummy;
    for (int i = 1; i < left; i++) preLeft = preLeft?.next;
    ListNode? curr = preLeft?.next;
    ListNode? prev = null;
    ListNode? nextNode;
    for (int i = left; i <= right; i++) {
      nextNode = curr?.next;
      curr?.next = prev;
      prev = curr;
      curr = nextNode;
    }
    preLeft?.next?.next = curr;
    preLeft?.next = prev;
    return dummy.next;
  }
}