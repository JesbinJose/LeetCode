/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? sum= ListNode();
    ListNode? temp = sum;
    int rem = 0;
    while(l1!=null||l2!=null){
        int curSum = rem;
        if(l1 != null){
            curSum += l1.val;
            l1 = l1.next;
        }
        if(l2 != null){
            curSum += l2.val;
            l2 = l2.next;
        }
        rem = curSum ~/10;
        temp?.next = ListNode(curSum%10);
        temp = temp?.next;
    }
    if(rem!=0) temp?.next = ListNode(rem);
    return sum.next;
  }
}