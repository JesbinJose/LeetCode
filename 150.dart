class Node {
  Node? next;
  int value;
  Node(this.value);
}
class Solution {
  Node? head;
  int evalRPN(List<String> tokens) {
    int a;
    for(String i in tokens){
        switch(i){
            case '+':
            push(pop()+pop());
            case '-':
            a=pop();
            push(pop()-a);
            case '/':
            a=pop();
            push(pop()~/a);
            case '*':
            push(pop()*pop());
            default:
            push(int.parse(i));
        }
    }
    return pop();
  }
  void push(int v){
    Node newNode =Node(v);
    newNode.next = head;
    head = newNode;
  }
  int pop(){
    int v = head!.value;
    head = head?.next;
    return v;
  }
}