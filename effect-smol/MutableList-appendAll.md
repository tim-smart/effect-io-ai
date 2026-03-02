Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.appendAll

Appends all elements from an iterable to the end of the MutableList.
Returns the number of elements added.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.append(list, 1)
MutableList.append(list, 2)

// Append multiple elements
const added = MutableList.appendAll(list, [3, 4, 5])
console.log(added) // 3
console.log(list.length) // 5

// Elements maintain order: [1, 2, 3, 4, 5]
console.log(MutableList.takeAll(list)) // [1, 2, 3, 4, 5]

// Works with any iterable
const newList = MutableList.make<string>()
MutableList.appendAll(newList, new Set(["a", "b", "c"]))
console.log(MutableList.takeAll(newList)) // ["a", "b", "c"]

// Useful for bulk loading
const bulkList = MutableList.make<number>()
const count = MutableList.appendAll(
  bulkList,
  Array.from({ length: 1000 }, (_, i) => i)
)
console.log(count) // 1000
```

**Signature**

```ts
declare const appendAll: <A>(self: MutableList<A>, messages: Iterable<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L470)

Since v4.0.0