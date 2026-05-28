Package: `effect`<br />
Module: `Effect`<br />

## Effect.andThen

Runs this effect and then runs another effect, optionally using the first
effect's success value to choose the next effect.

**When to use**

Use when one effect must run after another and the second effect
may depend on the first effect's success value.

**Details**

When the second argument is an `Effect`, the first success value is discarded
and the returned effect produces the second effect's value. When the second
argument is a function, it receives the first success value and must return
the next `Effect`.

Failures or requirements from either effect are preserved in the returned
effect.

**Example** (Syntax)

```ts
import { Effect, pipe } from "effect"

const myEffect = Effect.succeed(1)
const anotherEffect = Effect.succeed("done")

const transformedWithPipe = pipe(myEffect, Effect.andThen(anotherEffect))
const transformedWithDataFirst = Effect.andThen(myEffect, anotherEffect)
const transformedWithMethod = myEffect.pipe(Effect.andThen(anotherEffect))
```

**Example** (Sequencing a discount calculation after fetching a total)

```ts
import { Data, Effect, pipe } from "effect"

class DiscountRateError extends Data.TaggedError("DiscountRateError")<{}> {}

// Function to apply a discount safely to a transaction amount
const applyDiscount = (
  total: number,
  discountRate: number
): Effect.Effect<number, DiscountRateError> =>
  discountRate === 0
    ? Effect.fail(new DiscountRateError())
    : Effect.succeed(total - (total * discountRate) / 100)

// Simulated asynchronous task to fetch a transaction amount from database
const fetchTransactionAmount = Effect.promise(() => Promise.resolve(100))

// Using Effect.map and Effect.flatMap
const result1 = pipe(
  fetchTransactionAmount,
  Effect.map((amount) => amount * 2),
  Effect.flatMap((amount) => applyDiscount(amount, 5))
)

Effect.runPromise(result1).then(console.log)
// Output: 190

// Using Effect.andThen
const result2 = pipe(
  fetchTransactionAmount,
  Effect.andThen((amount) => Effect.succeed(amount * 2)),
  Effect.andThen((amount) => applyDiscount(amount, 5))
)

Effect.runPromise(result2).then(console.log)
// Output: 190
```

**Signature**

```ts
declare const andThen: { <A, B, E2, R2>(f: (a: A) => Effect<B, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B, E | E2, R | R2>; <B, E2, R2>(f: Effect<B, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: (a: A) => Effect<B, E2, R2>): Effect<B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: Effect<B, E2, R2>): Effect<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2071)

Since v2.0.0