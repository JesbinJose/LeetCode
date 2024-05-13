impl Solution {
    fn matrix_score(mut grid: Vec<Vec<i32>>) -> i32 {
        let m = grid.len();
        let n = grid[0].len();
        let mut res = m as i32 * 2_i32.pow(n as u32);

        for i in 0..m {
            if grid[i][0] == 0 {
                Self::change_row(&mut grid[i]);
            }
        }


        for i in 1..n {
            let (mut one_count, mut zero_count) = (0, 0);
            for j in 0..m {
                if grid[j][i] == 1 {
                    one_count += 1;
                } else {
                    zero_count += 1;
                }
            }
            res += std::cmp::max(one_count, zero_count) * 2_i32.pow((n - i) as u32);
        }

        res / 2
    }

    fn change_row(nums: &mut Vec<i32>) {
        for num in nums.iter_mut() {
            if *num == 0 {
                *num = 1;
            } else {
                *num = 0;
            }
        }
    }
}