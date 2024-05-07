class Solution {
  int left = 0; 
  ListNode? doubleIt(ListNode? head) {
    rec(head);
    return left == 0?head:ListNode(left,head);
  }
  
  ListNode? rec(ListNode? head) {
    if(head==null)return head;
    rec(head.next);
    int val = head.val *2 + left;
    if(val>9){
      left = val~/10;
      val = val%10;
    }else left=0;
    head.val = val;
  }
}