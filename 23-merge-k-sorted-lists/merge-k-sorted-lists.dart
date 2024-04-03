/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeKLists(List<ListNode?> lists) {
    ListNode? res = ListNode(0,null);
    ListNode? temp = res;
    lists.removeWhere((item) => item==null);
    while(lists.isNotEmpty){
      int index = 0;
      for(int i=0;i<lists.length;i++) if((lists[index]?.val??0) > (lists[i]?.val??0)) index = i;
      temp?.next = lists[index];
      temp = temp?.next;
      if(lists[index]?.next==null)lists.removeAt(index);
      else lists[index] =lists[index]?.next;
    }
    return res.next;
  }
}