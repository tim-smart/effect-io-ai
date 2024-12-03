# andThen

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

- A constant value (similar to {@link as})
- A function returning a value (similar to {@link map})
- A `Promise`
- A function returning a `Promise`
- An `Effect`
- A function returning an `Effect` (similar to {@link flatMap})

**Note:** `andThen` works well with both `Option` and `Either` types,
treating them as effects.

To import and use `andThen` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.andThen
```

**Example**

```ts
// Title: Applying a Discount Based on Fetched Amount
import { pipe, Effect } from "effect"

// Function to apply a discount safely to a transaction amount
const applyDiscount = (total: number, discountRate: number): Effect.Effect<number, Error> =>
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
  Effect.andThen((amount) => amount * 2),
  Effect.andThen((amount) => applyDiscount(amount, 5))
)

Effect.runPromise(result2).then(console.log)
// Output: 190
```

**Signature**

```ts
export declare const andThen: {
  <A, X>(
    f: (a: NoInfer<A>) => X
  ): <E, R>(
    self: Effect<A, E, R>
  ) => [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [PromiseLike<infer A1>]
      ? Effect<A1, E | Cause.UnknownException, R>
      : Effect<X, E, R>
  <X>(
    f: NotFunction<X>
  ): <A, E, R>(
    self: Effect<A, E, R>
  ) => [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [PromiseLike<infer A1>]
      ? Effect<A1, E | Cause.UnknownException, R>
      : Effect<X, E, R>
  <A, E, R, X>(
    self: Effect<A, E, R>,
    f: (a: NoInfer<A>) => X
  ): [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [PromiseLike<infer A1>]
      ? Effect<A1, E | Cause.UnknownException, R>
      : Effect<X, E, R>
  <A, E, R, X>(
    self: Effect<A, E, R>,
    f: NotFunction<X>
  ): [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [PromiseLike<infer A1>]
      ? Effect<A1, E | Cause.UnknownException, R>
      : Effect<X, E, R>
}
```
