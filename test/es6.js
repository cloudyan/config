
import { add } from './es'

// 还不支持 es6 module
// VS code extensions are run in a Node environment which does not natively support modules (So no import and export).
// yo code only uses import when you create a TypeScript extension. For js extensions, yo code instead uses require:
// https://stackoverflow.com/questions/61298183/syntax-error-cannot-use-import-statement-outside-a-module
console.log(add(1, 2))

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
