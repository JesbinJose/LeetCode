impl Solution {
    pub fn number_of_beams(mut bank: Vec<String>) -> i32 {
        let (mut res,mut preLazer)= (0,0);
        bank.reverse();
        for row in bank {
            let mut curLazer = 0;
            for i in row.chars() {
                if i=='1' {
                    curLazer +=1;
                }
            }
            res += curLazer*preLazer;
            if curLazer != 0 {
                preLazer = curLazer;
            }
        }
        res
    }
}