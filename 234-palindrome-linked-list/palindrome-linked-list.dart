/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  bool isPalindrome(ListNode? head) {
    if (head == null || head.next == null) return true;
    ListNode? slow = head;
    for(ListNode? fast = head;fast!.next != null && fast.next!.next != null;slow=slow!.next,fast=fast.next!.next);
    ListNode? prev = null;
    for(ListNode?  c = slow!.next, n ;c != null;n = c.next,c.next = prev,prev = c,c = n);
    ListNode? p1 = head, p2 = prev;
    while (p2 != null) 
      if (p1!.val != p2.val) return false;
      else (p1,p2) = (p1.next,p2.next);
    return true;
  }
}