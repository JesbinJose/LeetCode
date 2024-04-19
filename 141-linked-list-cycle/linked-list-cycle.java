public class Solution {
  public boolean hasCycle(ListNode head) {
    if (head == null || head.next == null||head.next.next == null) return false;
    for(ListNode slow = head.next,fast = head.next.next; fast.next != null && fast.next.next != null ; fast = fast.next.next , slow = slow.next)
      if (slow == fast) return true;
    return false;
  }
}
