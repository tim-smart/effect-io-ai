Package: `effect`<br />
Module: `index`<br />

## index.Iterable

Re-exports all named exports from the "./Iterable.ts" module as `Iterable`.

**Example**

```ts
import { Iterable, Option } from "effect"

// Create iterables
const numbers = Iterable.range(1, 5)
const doubled = Iterable.map(numbers, (x) => x * 2)
const filtered = Iterable.filter(doubled, (x) => x > 5)

console.log(Array.from(filtered)) // [6, 8, 10]

// Infinite iterables
const fibonacci = Iterable.unfold([0, 1], ([a, b]) => Option.some([a, [b, a + b]]))
const first10 = Iterable.take(fibonacci, 10)
console.log(Array.from(first10)) // [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```

**Signature**

```ts
export * as Iterable from "./Iterable.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L1578)

Since v2.0.0