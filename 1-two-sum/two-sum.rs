use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map: HashMap<i32, i32> = HashMap::new();
        
        for (index, &value) in nums.iter().enumerate() {
            let diff: i32 = target - value;
            if let Some(&prev_index) = map.get(&diff) {
                return vec![prev_index, index as i32];
            }
            map.insert(value, index as i32);
        }
        
        vec![]
    }
}
