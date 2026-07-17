Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.min

Creates a `Combiner` that returns the smaller of two values according to
the provided `Order`.

**When to use**

Use when you want to accumulate the minimum value across a collection or
build a `Reducer` that tracks the running minimum.

**Details**

The combiner compares values using the given `Order`. When values are equal,
it returns `that` (the second argument).

**Example** (Selecting the minimum of two numbers)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Combiner.ts#L149)

Since v4.0.0