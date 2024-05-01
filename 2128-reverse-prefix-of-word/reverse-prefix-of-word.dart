class Solution {
  String reversePrefix(String word, String ch) {
    int index = word.indexOf(ch)+1;
    return index==0?word:word.substring(0,index).split('').reversed.join('')+word.substring(index);
  }
}