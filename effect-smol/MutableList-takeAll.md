Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.takeAll

Takes all elements from the MutableList and returns them as an array.
The list becomes empty after this operation. This is equivalent to takeN(list, list.length).

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<string>()
MutableList.appendAll(list, ["apple", "banana", "cherry"])

console.log(list.length) // 3

// Take all elements
const allItems = MutableList.takeAll(list)
console.log(allItems) // ["apple", "banana", "cherry"]
console.log(list.length) // 0

// Useful for converting to array and clearing
const queue = MutableList.make<number>()
MutableList.appendAll(queue, [1, 2, 3, 4, 5])

const snapshot = MutableList.takeAll(queue)
console.log("Queue contents:", snapshot)
console.log("Queue is now empty:", queue.length === 0)

// Drain pattern for processing
function drainAndProcess<T>(
  list: MutableList.MutableList<T>,
  processor: (items: Array<T>) => void
) {
  if (list.length > 0) {
    const items = MutableList.takeAll(list)
    processor(items)
  }
}
```

**Signature**

```ts
declare const takeAll: <A>(self: MutableList<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L705)

Since v4.0.0