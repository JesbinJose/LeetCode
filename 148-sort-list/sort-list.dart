class Solution {
  ListNode? sortList(ListNode? head) {
    if (head == null || head.next == null) return head;
    ListNode? middle = _findMiddle(head);
    ListNode? secondHalf = middle?.next;
    middle?.next = null;
    return _merge(sortList(head),sortList(secondHalf));
  }

  ListNode? _findMiddle(ListNode? head) {
    ListNode? slow = head;
    ListNode? fast = head;
    while (fast?.next != null && fast?.next?.next != null) {
      slow = slow?.next;
      fast = fast?.next?.next;
    }
    return slow;
  }

  ListNode? _merge(ListNode? left, ListNode? right) {
    ListNode? dummy = ListNode(0);
    ListNode? current = dummy;
    while (left != null && right != null) {
      if (left.val < right.val) {
        current?.next = left;
        left = left.next;
      } else {
        current?.next = right;
        right = right.next;
      }
      current = current?.next;
    }
    current?.next = left ?? right;
    return dummy.next;
  }
}

