Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.make

Creates a `Combiner` from a binary function.

When to use:
- You have a custom combining operation that is not covered by the built-in
  constructors (`min`, `max`, `first`, `last`, `constant`).

Behavior:
- Returns a new `Combiner` whose `combine` method delegates to the provided
  function.
- Pure – the returned combiner does not mutate its arguments.

**Example** (multiplying numbers)

```ts
import { Combiner } from "effect"

const Product = Combiner.make<number>((self, that) => self * that)

console.log(Product.combine(3, 5))
// Output: 15
```

**See**

- `Combiner` – the interface this creates

**Signature**

```ts
declare const make: <A>(combine: (self: A, that: A) => A) => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L128)

Since v4.0.0