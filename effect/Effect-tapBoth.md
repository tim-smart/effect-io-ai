Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapBoth

Allows you to inspect both success and failure outcomes of an effect and
perform side effects for each.

**Details**

This function enables you to handle both success and failure cases
separately, without modifying the main effect's result. It is particularly
useful for scenarios where you need to log, monitor, or perform additional
actions depending on whether the effect succeeded or failed.

When the effect succeeds, the `onSuccess` handler is executed with the
success value. When the effect fails, the `onFailure` handler is executed
with the failure value. Both handlers can include side effects such as
logging or analytics, and neither modifies the original effect's output.

If either the success or failure handler fails, the overall effect will also
fail.

**Example**

```ts
import { Effect, Random, Console } from "effect"

// Simulate a task that might fail
const task = Effect.filterOrFail(
  Random.nextRange(-1, 1),
  (n) => n >= 0,
  () => "random number is negative"
)

// Use tapBoth to log both success and failure outcomes
const tapping = Effect.tapBoth(task, {
  onFailure: (error) => Console.log(`failure: ${error}`),
  onSuccess: (randomNumber) =>
    Console.log(`random number: ${randomNumber}`)
})

Effect.runFork(tapping)
// Example Output:
// failure: random number is negative
```

**Signature**

```ts
declare const tapBoth: { <E, X, E2, R2, A, X1, E3, R3>(options: { readonly onFailure: (e: NoInfer<E>) => Effect<X, E2, R2>; readonly onSuccess: (a: NoInfer<A>) => Effect<X1, E3, R3>; }): <R>(self: Effect<A, E, R>) => Effect<A, E | E2 | E3, R2 | R3 | R>; <A, E, R, X, E2, R2, X1, E3, R3>(self: Effect<A, E, R>, options: { readonly onFailure: (e: E) => Effect<X, E2, R2>; readonly onSuccess: (a: A) => Effect<X1, E3, R3>; }): Effect<A, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9573)

Since v2.0.0