Package: `effect`<br />
Module: `Effect`<br />

## Effect.tap

Runs a side effect with the result of an effect without changing the original
value.

**When to Use**

Use `tap` when you want to perform a side effect, like logging or tracking,
without modifying the main value. This is useful when you need to observe or
record an action but want the original value to be passed to the next step.

**Details**

`tap` works similarly to `flatMap`, but it ignores the result of the function
passed to it. The value from the previous effect remains available for the
next part of the chain. Note that if the side effect fails, the entire chain
will fail too.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.zipLeft`

**Example**

```ts
// Title: Logging a step in a pipeline
import { Data, Effect, pipe } from "effect"
import { Console } from "effect"

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

**Signature**

```ts
declare const tap: { <A, B, E2, R2>(f: (a: NoInfer<A>) => Effect<B, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R | R2>; <B, E2, R2>(f: Effect<B, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: (a: NoInfer<A>) => Effect<B, E2, R2>): Effect<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: Effect<B, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2157)

Since v2.0.0