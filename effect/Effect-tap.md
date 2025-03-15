Package: `effect`<br />
Module: `Effect`<br />

## Effect.tap

Runs a side effect with the result of an effect without changing the original
value.

**Details**

This function works similarly to `flatMap`, but it ignores the result of the
function passed to it. The value from the previous effect remains available
for the next part of the chain. Note that if the side effect fails, the
entire chain will fail too.

**When to Use**

Use this function when you want to perform a side effect, like logging or
tracking, without modifying the main value. This is useful when you need to
observe or record an action but want the original value to be passed to the
next step.

**Example** (Logging a step in a pipeline)

```ts
import { Console, Effect, pipe } from "effect"

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

const finalAmount = pipe(
  fetchTransactionAmount,
  // Log the fetched transaction amount
  Effect.tap((amount) => Console.log(`Apply a discount to: ${amount}`)),
  // `amount` is still available!
  Effect.flatMap((amount) => applyDiscount(amount, 5))
)

Effect.runPromise(finalAmount).then(console.log)
// Output:
// Apply a discount to: 100
// 95
```

**See**

- `flatMap` for a version that allows you to change the value.

**Signature**

```ts
declare const tap: { <A, X>(f: (a: NoInfer<A>) => X): <E, R>(self: Effect<A, E, R>) => [X] extends [Effect<infer _A1, infer E1, infer R1>] ? Effect<A, E | E1, R | R1> : [X] extends [PromiseLike<infer _A1>] ? Effect<A, E | Cause.UnknownException, R> : Effect<A, E, R>; <A, X, E1, R1>(f: (a: NoInfer<A>) => Effect<X, E1, R1>, options: { onlyEffect: true; }): <E, R>(self: Effect<A, E, R>) => Effect<A, E | E1, R | R1>; <X>(f: NotFunction<X>): <A, E, R>(self: Effect<A, E, R>) => [X] extends [Effect<infer _A1, infer E1, infer R1>] ? Effect<A, E | E1, R | R1> : [X] extends [PromiseLike<infer _A1>] ? Effect<A, E | Cause.UnknownException, R> : Effect<A, E, R>; <X, E1, R1>(f: Effect<X, E1, R1>, options: { onlyEffect: true; }): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E1, R | R1>; <A, E, R, X>(self: Effect<A, E, R>, f: (a: NoInfer<A>) => X): [X] extends [Effect<infer _A1, infer E1, infer R1>] ? Effect<A, E | E1, R | R1> : [X] extends [PromiseLike<infer _A1>] ? Effect<A, E | Cause.UnknownException, R> : Effect<A, E, R>; <A, E, R, X, E1, R1>(self: Effect<A, E, R>, f: (a: NoInfer<A>) => Effect<X, E1, R1>, options: { onlyEffect: true; }): Effect<A, E | E1, R | R1>; <A, E, R, X>(self: Effect<A, E, R>, f: NotFunction<X>): [X] extends [Effect<infer _A1, infer E1, infer R1>] ? Effect<A, E | E1, R | R1> : [X] extends [PromiseLike<infer _A1>] ? Effect<A, E | Cause.UnknownException, R> : Effect<A, E, R>; <A, E, R, X, E1, R1>(self: Effect<A, E, R>, f: Effect<X, E1, R1>, options: { onlyEffect: true; }): Effect<A, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9487)

Since v2.0.0