class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
//Recurction
class SolutionR {
  ListNode? reverseList(ListNode? head) {
    if (head?.next == null) return head;
    ListNode? reversedList = reverseList(head!.next);
    head.next!.next = head;
    head.next = null;
    return reversedList;
  }
}

//Iteartion
class SolutionI {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    if (head == null) return null;
    while (head != null) {
      ListNode? temp = head.next;
      head.next = prev;
      prev = head;
      head = temp;
    }
    return prev;
  }
}