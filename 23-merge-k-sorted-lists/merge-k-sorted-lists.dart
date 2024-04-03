class Solution {
  ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
    ListNode? dummy = ListNode(0); 
    ListNode? temp = dummy; 
    for (;l1 != null && l2 != null;temp = temp.next) 
     if (l1.val < l2.val) {
        temp!.next = l1;
        l1 = l1.next;
      } else {
        temp!.next = l2;
        l2 = l2.next;
      }
    temp!.next = l1 ?? l2; 
    return dummy.next;
  }

  ListNode? mergeKLists(List<ListNode?> lists) {
    if (lists.isEmpty) return null;  
    for (int interval = 1;interval < lists.length;interval *= 2) 
      for (int i = 0; i + interval < lists.length; i += interval * 2) lists[i] = mergeTwoLists(lists[i], lists[i + interval]);
    return lists[0]; 
  }
}
