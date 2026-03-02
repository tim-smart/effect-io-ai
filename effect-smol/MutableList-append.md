Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.append

Appends an element to the end of the MutableList.
This operation is optimized for high-frequency usage.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()

// Append elements one by one
MutableList.append(list, 1)
MutableList.append(list, 2)
MutableList.append(list, 3)

console.log(list.length) // 3

// Elements are taken from head (FIFO)
console.log(MutableList.take(list)) // 1
console.log(MutableList.take(list)) // 2
console.log(MutableList.take(list)) // 3

// High-throughput usage
for (let i = 0; i < 10000; i++) {
  MutableList.append(list, i)
}
```

**Signature**

```ts
declare const append: <A>(self: MutableList<A>, message: A) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L308)

Since v4.0.0