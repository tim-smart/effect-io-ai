Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.make

Creates an empty MutableList.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<string>()

// Add elements
MutableList.append(list, "first")
MutableList.append(list, "second")
MutableList.prepend(list, "beginning")

console.log(list.length) // 3

// Take elements in FIFO order (from head)
console.log(MutableList.take(list)) // "beginning"
console.log(MutableList.take(list)) // "first"
console.log(MutableList.take(list)) // "second"
```

**Signature**

```ts
declare const make: <A>() => MutableList<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L264)

Since v4.0.0