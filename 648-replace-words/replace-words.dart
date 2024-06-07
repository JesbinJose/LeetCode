class Solution {
  String replaceWords(List<String> dictionary, String sentence) {
    Trie trie = Trie();
    List<String> words = sentence.split(' ');
    for (String word in dictionary) trie.insert(word);
    for (int i = 0; i < words.length; i++) 
      words[i] = trie.getShortestPrefix(words[i]) ?? words[i];
    return words.join(' ');
  }
}
class Trie {
  TrieNode root;
  Trie() : root = TrieNode();
  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      int index = word.codeUnitAt(i) - 97;
      if (node.children[index] == null) node.children[index] = TrieNode();
      node = node.children[index]!;
    }
    node.isWordEnd = true;
  }

  String? getShortestPrefix(String word) {
    TrieNode node = root;
    String prefix = '';
    for (int i = 0; i < word.length; i++) {
      int index = word.codeUnitAt(i) - 97;
      if (node.children[index] == null) break;
      node = node.children[index]!;
      prefix += word[i];
      if (node.isWordEnd) return prefix;
    }
    return null;
  }
}

class TrieNode {
  List<TrieNode?> children;
  bool isWordEnd;
  TrieNode() : children = List.filled(26, null), isWordEnd = false;
}