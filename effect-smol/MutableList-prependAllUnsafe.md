Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.prependAllUnsafe

Prepends all elements from a ReadonlyArray to the beginning of the MutableList.
This is an optimized version that can reuse the array when mutable=true.

⚠️ **Warning**: When mutable=true, the input array may be modified internally.
Only use mutable=true when you control the array lifecycle.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.append(list, 4)

// Safe usage (default mutable=false)
const items = [1, 2, 3]
MutableList.prependAllUnsafe(list, items)
console.log(items) // [1, 2, 3] - unchanged

// Unsafe but efficient usage (mutable=true)
const mutableItems = [10, 20, 30]
MutableList.prependAllUnsafe(list, mutableItems, true)
// mutableItems may be modified internally for efficiency

console.log(MutableList.takeAll(list)) // [10, 20, 30, 1, 2, 3, 4]
```

**Signature**

```ts
declare const prependAllUnsafe: <A>(self: MutableList<A>, messages: ReadonlyArray<A>, mutable?: boolean) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L423)

Since v4.0.0