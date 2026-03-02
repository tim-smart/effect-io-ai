Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.appendAllUnsafe

Appends all elements from a ReadonlyArray to the end of the MutableList.
This is an optimized version that can reuse the array when mutable=true.
Returns the number of elements added.

⚠️ **Warning**: When mutable=true, the input array may be modified internally.
Only use mutable=true when you control the array lifecycle.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.append(list, 1)

// Safe usage (default mutable=false)
const items = [2, 3, 4]
const added = MutableList.appendAllUnsafe(list, items)
console.log(added) // 3
console.log(items) // [2, 3, 4] - unchanged

// Unsafe but efficient usage (mutable=true)
const mutableItems = [5, 6, 7]
MutableList.appendAllUnsafe(list, mutableItems, true)
// mutableItems may be modified internally for efficiency

console.log(MutableList.takeAll(list)) // [1, 2, 3, 4, 5, 6, 7]

// High-performance bulk operations
const bigArray = new Array(10000).fill(0).map((_, i) => i)
MutableList.appendAllUnsafe(list, bigArray, true) // Very efficient
```

**Signature**

```ts
declare const appendAllUnsafe: <A>(self: MutableList<A>, messages: ReadonlyArray<A>, mutable?: boolean) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L509)

Since v4.0.0