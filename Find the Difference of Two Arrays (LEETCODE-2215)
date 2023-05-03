class Solution {
    public List<List<Integer>> findDifference(int[] nums1, int[] nums2) {
        Set<Integer> set1=new HashSet<>();
        Set<Integer> set2=new HashSet<>();
        for(int val1:nums1)
        set1.add(val1);
        for(int val2:nums2)
        set2.add(val2);
        set1.remove(set2);
        List<List<Integer>> list=new ArrayList<>();
        List<Integer> l1=new ArrayList<>();
        List<Integer> l2=new ArrayList<>();

        for(int ele:set2)
        {
            if(set1.contains(ele)==false)
            l1.add(ele);
        }
        for(int ele:set1)
        {
            if(set2.contains(ele)==false)
            l2.add(ele);
        }
        list.add(l2);
        list.add(l1);
        return list;
    }
}



