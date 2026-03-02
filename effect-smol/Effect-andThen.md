Package: `effect`<br />
Module: `Effect`<br />

## Effect.andThen

Chains two actions, where the second action can depend on the result of the
first.

**Syntax**

```ts
const transformedEffect = pipe(myEffect, Effect.andThen(anotherEffect))
// or
const transformedEffect = Effect.andThen(myEffect, anotherEffect)
// or
const transformedEffect = myEffect.pipe(Effect.andThen(anotherEffect))
```

**When to Use**

Use `andThen` when you need to run multiple actions in sequence, with the
second action depending on the result of the first. This is useful for
combining effects or handling computations that must happen in order.

**Details**

The second action can be:

- A constant value (similar to `as`)
- A function returning a value (similar to `map`)
- A `Promise`
- A function returning a `Promise`
- An `Effect`
- A function returning an `Effect` (similar to `flatMap`)

**Note:** `andThen` works well with both `Option` and `Result` types,
treating them as effects.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.zipRight`

**Example**

```ts
Applying a Discount Based on Fetched Amount
```ts
import { Effect, pipe } from "effect"

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
```

**Signature**

```ts
declare const andThen: { <A, B, E2, R2>(f: (a: A) => Effect<B, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B, E | E2, R | R2>; <B, E2, R2>(f: Effect<B, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: (a: A) => Effect<B, E2, R2>): Effect<B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: Effect<B, E2, R2>): Effect<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2158)

Since v2.0.0