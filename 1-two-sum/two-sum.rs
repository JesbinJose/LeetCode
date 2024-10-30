use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map: HashMap<i32, i32> = HashMap::new();
        
        for (index, value) in nums.iter().enumerate() {
            let complement = target - value;
            match map.get(&complement) {
                Some(&v) => return vec![v, index as i32],
                None => {
                    map.insert(*value, index as i32);
                }
            }
        }
        
        vec![] 
    }
}
