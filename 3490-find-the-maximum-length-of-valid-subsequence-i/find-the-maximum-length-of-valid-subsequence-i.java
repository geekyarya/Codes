class Solution {
    public int maximumLength(int[] nums) {
        int evensum=0, oddsum=0, paritysum=0;
        for(int num:nums)
        {
            if(num%2==0)
            evensum++;
            else
            oddsum++;
        }
        int alternating=1;
        int parity=nums[0]%2;
        for(int i=1;i<nums.length;i++)
        {
            int currParity = nums[i]%2;
            if(currParity!=parity){
                alternating++;
                parity=currParity;
            }
        }
        int tempMax=0;
        tempMax=Math.max(evensum, oddsum);
        return Math.max(tempMax, alternating);
    }
}