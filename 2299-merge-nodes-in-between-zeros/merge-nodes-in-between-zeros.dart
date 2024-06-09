/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeNodes(ListNode? head) {
    ListNode? res = ListNode();
    ListNode? cur = res;
    int curSum = 0;
    head = head?.next;
    while(head!=null){
      if(head.val!=0){
        curSum += head.val;
      }else{
        cur?.next = ListNode(curSum);
        cur = cur?.next;
        curSum = 0;
      }
      head = head.next;
    }
    return res.next;
  }
}