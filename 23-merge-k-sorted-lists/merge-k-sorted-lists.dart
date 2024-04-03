class Solution {
  ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
    ListNode? dummy = ListNode(0); // Dummy node to simplify the merging process
    ListNode? temp = dummy; // Pointer to the current node in the merged list

    while (l1 != null && l2 != null) {
      if (l1.val < l2.val) {
        temp!.next = l1;
        l1 = l1.next;
      } else {
        temp!.next = l2;
        l2 = l2.next;
      }
      temp = temp.next;
    }

    temp!.next = l1 ?? l2; // Attach the remaining nodes

    return dummy.next; // Return the merged list
  }

  ListNode? mergeKLists(List<ListNode?> lists) {
    if (lists.isEmpty) return null; // Handle edge case

    int interval = 1; // Initialize interval to merge lists
    while (interval < lists.length) {
      for (int i = 0; i + interval < lists.length; i += interval * 2) {
        lists[i] = mergeTwoLists(lists[i], lists[i + interval]); // Merge two lists
      }
      interval *= 2; // Double the interval for next iteration
    }

    return lists[0]; // Return the merged list
  }
}
