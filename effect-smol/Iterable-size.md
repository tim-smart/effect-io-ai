Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.size

Return the number of elements in a `Iterable`.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3, 4, 5]
console.log(Iterable.size(numbers)) // 5

const empty = Iterable.empty<number>()
console.log(Iterable.size(empty)) // 0

// Works with any iterable
const letters = "hello"
console.log(Iterable.size(letters)) // 5

// Note: This consumes the entire iterable
const range = Iterable.range(1, 100)
console.log(Iterable.size(range)) // 100
```

**Signature**

```ts
declare const size: <A>(self: Iterable<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L411)

Since v2.0.0