#知识/算法/leetcode

```python
class Solution:
    def search(self, nums: list[int], target: int) -> int:
        l = len(nums)
        if l == 2:
            if nums[0] == target:
                return 0
            elif nums[1] == target:
                return 1
            else:
                return -1
        elif l == 1:
            if nums[0] == target:
                return 0
            else:
                return -1
        else:
            if l % 2 == 0:
                if nums[int(l / 2)] == target:
                    return int(l / 2)
                elif nums[int(l / 2)] < target:
                    if self.search(nums[int(l / 2) :], target) == -1:
                        return -1
                    else:
                        return int(l / 2) + self.search(nums[int(l / 2) :], target)
                else:
                    return self.search(nums[: int(l / 2)], target)
            else:
                if nums[l // 2] == target:
                    return l // 2
                elif nums[l // 2] < target:
                    if self.search(nums[1 + l // 2 :], target) == -1:
                        return -1
                    else:
                        return 1 + l // 2 + self.search(nums[1 + l // 2 :], target)
                else:
                    return self.search(nums[: l // 2], target)

a = [-1,0,3,5,9,12]
solution = Solution()
print(solution.search(a, 9))
```

- 值得注意的是, 在python中, 整数/2后会变成float, 而float不能用于作为list的index以及slice时的index


```python
class Solution:
    def search(self, nums: list[int], target: int) -> int:
        left, right = 0, len(nums) - 1
        while left <= right:
            # mid = left + (right - left) // 2
            # 改成下面这行, 是可以提升一点速度的
            mid = (right + left) // 2
            if nums[mid] == target:
                return mid
            elif nums[mid] < target:
                left = mid + 1
            else:
                right = mid - 1
        return -1

a = [-1, 0, 3, 5, 9, 12]
solution = Solution()
print(solution.search(a, 6))

```