impl Solution {
    pub fn number_of_employees_who_met_target(hours: Vec<i32>, target: i32) -> i32 {
        let mut count: i32 = 0;
        for i in hours{
            if i >= target {
                count += 1;
            }
        }
        count
    }
}