Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.empty

Creates an empty iterable that yields no elements.

This function returns a reusable empty iterable that can be used as a base case
for operations or when you need to represent "no data" in a type-safe way.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1312)

Since v2.0.0