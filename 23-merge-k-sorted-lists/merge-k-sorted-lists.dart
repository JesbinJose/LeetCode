class Solution {
  ListNode? mergeKLists(List<ListNode?> lists) {
    ListNode? dummy = ListNode(0); 
    ListNode? temp = dummy; 
    lists.removeWhere((item) => item == null);
    while (lists.isNotEmpty) {
      int index = 0; 
      int minValue = lists[0]!.val; 

      for (int i = 1; i < lists.length; i++) {
        if (lists[i]!.val < minValue) {
          minValue = lists[i]!.val;
          index = i;
        }
      }
      temp!.next = lists[index];
      temp = temp.next;

      lists[index] = lists[index]!.next;

      if (lists[index] == null) {
        lists.removeAt(index);
      }
    }

    return dummy.next; 
  }
}
