class ArrayWrapper {
    str: string;
    tot: number;
	constructor(nums: number[]) {
        this.str = `[${nums.join(",")}]`;
        this.tot = nums.reduce((a, b) => a + b, 0);
    }

	valueOf(): number {
        return this.tot;
    }

	toString(): string {
        return this.str;
    }
};