Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.clear

Removes all elements from the MutableList, resetting it to an empty state.
This operation is highly optimized and releases all internal memory.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.appendAll(list, [1, 2, 3, 4, 5])

console.log(list.length) // 5

// Clear all elements
MutableList.clear(list)

console.log(list.length) // 0
console.log(MutableList.take(list)) // Empty

// Can still use the list after clearing
MutableList.append(list, 42)
console.log(list.length) // 1

// Useful for resetting queues or buffers
function resetBuffer<T>(buffer: MutableList.MutableList<T>) {
  MutableList.clear(buffer)
  console.log("Buffer cleared and ready for reuse")
}
```

**Signature**

```ts
declare const clear: <A>(self: MutableList<A>) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L561)

Since v4.0.0