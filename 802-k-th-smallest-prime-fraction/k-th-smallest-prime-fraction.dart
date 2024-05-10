class Solution {
  List<int> kthSmallestPrimeFraction(List<int> arr, int k) {
    List<List<int>> temp = [];
    for(int i = 0;i<arr.length;i++){
      for(int j=i+1;j<arr.length;j++){
        temp.add([arr[i],arr[j]]);
      }
    }
    temp.sort((a,b)=>(a[0]/a[1]).compareTo(b[0]/b[1]));
    return temp[k-1];
  }
}