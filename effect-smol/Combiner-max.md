Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.max

Creates a `Combiner` that returns the larger of two values according to
the provided `Order`.

When to use:
- You want to accumulate the maximum value across a collection.
- You are building a `Reducer` that tracks the running maximum.

Behavior:
- Compares using the given `Order`. When values are equal, returns `that`
  (the second argument).
- Pure – does not mutate either argument.

**Example** (maximum of two numbers)

```ts
import { Combiner, Number } from "effect"

const Max = Combiner.max(Number.Order)

console.log(Max.combine(3, 1))
// Output: 3

console.log(Max.combine(1, 3))
// Output: 3
```

**See**

- `min`

**Signature**

```ts
declare const max: <A>(order: Order.Order<A>) => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L230)

Since v4.0.0