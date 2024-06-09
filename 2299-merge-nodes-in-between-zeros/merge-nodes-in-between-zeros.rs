impl Solution {
    pub fn merge_nodes(head: Option<Box<ListNode>>) -> Option<Box<ListNode>> {
        let mut dummy = Box::new(ListNode::new(0));
        let mut current = &mut dummy;
        let mut node = head.unwrap().next;
        let mut current_sum = 0;
        while let Some(inner_node) = node {
            if inner_node.val != 0 {
                current_sum += inner_node.val;
            } else {
                current.next = Some(Box::new(ListNode::new(current_sum)));
                current = current.next.as_mut().unwrap();
                current_sum = 0;
            }
            node = inner_node.next;
        }
        dummy.next
    }
}
