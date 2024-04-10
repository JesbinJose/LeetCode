class Trie {
  TrieNode root = TrieNode('');
  
  void insert(String word) {
    TrieNode temp = root;
    for (int i=0;i<word.length;i++) {
      final index = word.codeUnitAt(i)-97;
      if (temp.childrens[index] == null) temp.childrens[index] = TrieNode(word[i]);
      temp = temp.childrens[index]!;
    }
    temp.isWordEnd = true;
  }
  
  bool search(String word) {
    TrieNode? temp = root;
    for (int i=0;i<word.length;i++) {
      final index = word.codeUnitAt(i)-97;
      if (temp == null || temp.childrens[index] == null) return false;
      temp = temp.childrens[index]!;
    }
    return temp != null && temp.isWordEnd;
  }
  
  bool startsWith(String prefix) {
    TrieNode? temp = root;
    for (int i=0;i<prefix.length;i++) {
      final index = prefix.codeUnitAt(i)-97;
      if (temp == null || temp.childrens[index] == null) return false;
      temp = temp.childrens[index];
    }
    return true;
  }
}

class TrieNode {
  final String char;
  bool isWordEnd;
  final List<TrieNode?> childrens = List.filled(26,null);
  TrieNode(this.char, [this.isWordEnd = false]);
}
