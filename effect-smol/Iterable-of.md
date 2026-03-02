Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.of

Creates an iterable containing a single element.

This is useful for wrapping a single value in an iterable context,
allowing it to be used with other iterable operations.

**Example**

```ts
import { Iterable } from "effect"

const single = Iterable.of(42)
console.log(Array.from(single)) // [42]

// Useful for creating homogeneous sequences
const sequences = [
  Iterable.of("hello"),
  Iterable.range(1, 3),
  Iterable.empty<string>()
]

// Can be used with flatMap for conditional inclusion
const numbers = [1, 2, 3, 4, 5]
const evensOnly = Iterable.flatMap(
  numbers,
  (n) => n % 2 === 0 ? Iterable.of(n) : Iterable.empty()
)
console.log(Array.from(evensOnly)) // [2, 4]
```

**Signature**

```ts
declare const of: <A>(a: A) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1347)

Since v2.0.0