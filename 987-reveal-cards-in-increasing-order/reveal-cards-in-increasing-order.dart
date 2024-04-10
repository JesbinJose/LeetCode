import 'dart:collection';

class Solution {
  List<int> deckRevealedIncreasing(List<int> deck) {
    var queue = Queue<int>();
    deck.sort((a, b) => b.compareTo(a));
    queue.addFirst(deck[0]);
    for(int i=1;i<deck.length;i++){
      queue.addFirst(queue.removeLast());
      queue.addFirst(deck[i]);
    }
    return queue.toList();
  }
}