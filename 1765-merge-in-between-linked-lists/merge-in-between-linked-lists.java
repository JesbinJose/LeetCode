/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
  public ListNode mergeInBetween(ListNode list1, int a, int b, ListNode list2) {
    ListNode res = list1;
    while(1!=a--){
      b--;
      list1 = list1.next;
    }
    ListNode temp = list1.next;
    list1.next = list2;
    while(list1.next!=null)list1 =list1.next;
    while(0!=b--)temp = temp.next;
    list1.next = temp;
    return res;
  }
}