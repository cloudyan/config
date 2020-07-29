
// import { add } from './es'

// 还不支持 es6
// console.log(add(1, 2))

function findIndex(nums) {
  for (let i = nums.length - 2; i>=0; i--) {
    if (nums[i] < nums[i+1]) return i

    // if (nums[i]>=nums[i+1]) {
    //   continue
    // } else {
    //   return i
    // }
  }
  return -1
}
console.log(findIndex([1,3,2]))
