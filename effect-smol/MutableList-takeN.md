Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.takeN

Takes up to N elements from the beginning of the MutableList and returns them as an array.
The taken elements are removed from the list. This operation is optimized for performance
and includes zero-copy optimizations when possible.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.appendAll(list, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

console.log(list.length) // 10

// Take first 3 elements
const first3 = MutableList.takeN(list, 3)
console.log(first3) // [1, 2, 3]
console.log(list.length) // 7

// Take more than available
const remaining = MutableList.takeN(list, 20)
console.log(remaining) // [4, 5, 6, 7, 8, 9, 10]
console.log(list.length) // 0

// Take from empty list
const empty = MutableList.takeN(list, 5)
console.log(empty) // []

// Batch processing pattern
const queue = MutableList.make<string>()
MutableList.appendAll(queue, ["task1", "task2", "task3", "task4", "task5"])

while (queue.length > 0) {
  const batch = MutableList.takeN(queue, 2) // Process 2 at a time
  console.log("Processing batch:", batch)
}
```

**Signature**

```ts
declare const takeN: <A>(self: MutableList<A>, n: number) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L607)

Since v4.0.0