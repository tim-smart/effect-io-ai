Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.prepend

Prepends an element to the beginning of the MutableList.
This operation is optimized for high-frequency usage.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<string>()

// Prepend elements (they'll be at the front)
MutableList.prepend(list, "third")
MutableList.prepend(list, "second")
MutableList.prepend(list, "first")

console.log(list.length) // 3

// Elements taken from head (most recently prepended first)
console.log(MutableList.take(list)) // "first"
console.log(MutableList.take(list)) // "second"
console.log(MutableList.take(list)) // "third"

// Use case: priority items or stack-like behavior
MutableList.append(list, "normal")
MutableList.prepend(list, "priority") // This will be taken first
console.log(MutableList.take(list)) // "priority"
```

**Signature**

```ts
declare const prepend: <A>(self: MutableList<A>, message: A) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L350)

Since v4.0.0