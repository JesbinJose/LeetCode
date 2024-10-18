impl Solution {
    pub fn merge_alternately(word1: String, word2: String) -> String {
        let mut merged_word = String::new();
        let max_len = if(word1.len() > word2.len()){
            word2.len()
        }else{
            word1.len()
        };
        for index in 0..max_len {
            merged_word.push(word1.chars().nth(index).unwrap());
            merged_word.push(word2.chars().nth(index).unwrap());
        }
        if (word1.len()>max_len){
            merged_word.push_str(&word1[max_len..]);
        }else{
            merged_word.push_str(&word2[max_len..]);
        }
        merged_word
    }
}