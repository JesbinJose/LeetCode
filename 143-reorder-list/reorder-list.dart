class Solution {
  void reorderList(ListNode? head) {
    if (head?.next?.next == null) return;
    List<ListNode?> list = [];
    for (; head != null; list.add(head), head = head.next);
    head = list[0];
    bool isLeft = false;
    for(int left = 1,right = list.length - 1;right >= left;isLeft = !isLeft,head = head.next) head!.next = list[isLeft ? left++ : right--];
    head!.next = null; 
  }
}