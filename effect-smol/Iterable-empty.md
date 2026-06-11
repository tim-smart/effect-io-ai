Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.empty

Creates an empty iterable that yields no elements.

**When to use**

Use when you need an empty iterable as a typed "no data" value or a base
case for iterable operations.

**Example** (Creating an empty iterable)

```ts
import { Iterable } from "effect"

const empty = Iterable.empty<string>()
console.log(Array.from(empty)) // []
console.log(Iterable.isEmpty(empty)) // true

// Useful as base case for reductions
const hasData = true
const result = hasData
  ? Iterable.range(1, 5)
  : Iterable.empty<number>()
```

**Signature**

```ts
declare const empty: <A = never>() => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1413)

Since v2.0.0