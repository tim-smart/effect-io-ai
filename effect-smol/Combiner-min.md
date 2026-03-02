Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.min

Creates a `Combiner` that returns the smaller of two values according to
the provided `Order`.

When to use:
- You want to accumulate the minimum value across a collection.
- You are building a `Reducer` that tracks the running minimum.

Behavior:
- Compares using the given `Order`. When values are equal, returns `that`
  (the second argument).
- Pure – does not mutate either argument.

**Example** (minimum of two numbers)

```ts
import { Combiner, Number } from "effect"

const Min = Combiner.min(Number.Order)

console.log(Min.combine(3, 1))
// Output: 1

console.log(Min.combine(1, 3))
// Output: 1
```

**See**

- `max`

**Signature**

```ts
declare const min: <A>(order: Order.Order<A>) => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L195)

Since v4.0.0