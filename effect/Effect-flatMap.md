Package: `effect`<br />
Module: `Effect`<br />

## Effect.flatMap

Chains effects to produce new `Effect` instances, useful for combining
operations that depend on previous results.

**Syntax**

```ts
const flatMappedEffect = pipe(myEffect, Effect.flatMap(transformation))
// or
const flatMappedEffect = Effect.flatMap(myEffect, transformation)
// or
const flatMappedEffect = myEffect.pipe(Effect.flatMap(transformation))
```

**Details**

`flatMap` lets you sequence effects so that the result of one effect can be
used in the next step. It is similar to `flatMap` used with arrays but works
specifically with `Effect` instances, allowing you to avoid deeply nested
effect structures.

Since effects are immutable, `flatMap` always returns a new effect instead of
changing the original one.

**When to Use**

Use `flatMap` when you need to chain multiple effects, ensuring that each
step produces a new `Effect` while flattening any nested effects that may
occur.

**Example**

```ts
import { pipe, Effect } from "effect"

// Function to apply a discount safely to a transaction amount
const applyDiscount = (
  total: number,
  discountRate: number
): Effect.Effect<number, Error> =>
  discountRate === 0
    ? Effect.fail(new Error("Discount rate cannot be zero"))
    : Effect.succeed(total - (total * discountRate) / 100)

// Simulated asynchronous task to fetch a transaction amount from database
const fetchTransactionAmount = Effect.promise(() => Promise.resolve(100))

// Chaining the fetch and discount application using `flatMap`
const finalAmount = pipe(
  fetchTransactionAmount,
  Effect.flatMap((amount) => applyDiscount(amount, 5))
)

Effect.runPromise(finalAmount).then(console.log)
// Output: 95
```

**See**

- `tap` for a version that ignores the result of the effect.

**Signature**

```ts
declare const flatMap: { <A, B, E1, R1>(f: (a: A) => Effect<B, E1, R1>): <E, R>(self: Effect<A, E, R>) => Effect<B, E1 | E, R1 | R>; <A, E, R, B, E1, R1>(self: Effect<A, E, R>, f: (a: A) => Effect<B, E1, R1>): Effect<B, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8848)

Since v2.0.0