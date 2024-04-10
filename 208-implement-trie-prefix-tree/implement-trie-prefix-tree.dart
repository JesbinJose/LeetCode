class Trie {
  TrieNode root = TrieNode('');
  
  void insert(String word) {
    TrieNode temp = root;
    for (String w in word.split('')) {
      if (temp.childrens[w] == null) temp.childrens[w] = TrieNode(w);
      temp = temp.childrens[w]!;
    }
    temp.isWordEnd = true;
  }
  
  bool search(String word) {
    TrieNode? temp = root;
    for (String w in word.split('')) {
      if (temp == null || temp.childrens[w] == null) return false;
      temp = temp.childrens[w]!;
    }
    return temp != null && temp.isWordEnd;
  }
  
  bool startsWith(String prefix) {
    TrieNode? temp = root;
    for (String w in prefix.split('')) {
      if (temp == null || temp.childrens[w] == null) return false;
      temp = temp.childrens[w];
    }
    return true;
  }
}

class TrieNode {
  final String char;
  bool isWordEnd;
  final Map<String, TrieNode> childrens = {};
  TrieNode(this.char, [this.isWordEnd = false]);
}
