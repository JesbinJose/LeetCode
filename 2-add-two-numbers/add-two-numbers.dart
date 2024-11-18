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
    ListNode list = ListNode(0);
    ListNode? temp = list;
    int reminder = 0;
    void work(){
        int sum = reminder;
        sum += l1?.val??0;
        sum += l2?.val??0;
        temp!.next = ListNode(sum%10);
        temp = temp?.next;
        reminder = sum ~/ 10;
    }
    while (l1!=null||l2!=null){
        work();
        l1 = l1?.next;
        l2 = l2?.next;
    }
    if(reminder != 0){
        temp?.next = ListNode(reminder);
    }
    return list.next;
  }
}