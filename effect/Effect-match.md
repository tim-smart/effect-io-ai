Package: `effect`<br />
Module: `Effect`<br />

## Effect.match

Handles both success and failure cases of an effect without performing side
effects.

**Details**

`match` lets you define custom handlers for both success and failure
scenarios. You provide separate functions to handle each case, allowing you
to process the result if the effect succeeds, or handle the error if the
effect fails.

**When to Use**

This is useful for structuring your code to respond differently to success or
failure without triggering side effects.

**Example** (Handling Both Success and Failure Cases)

```ts
import { Effect } from "effect"

const success: Effect.Effect<number, Error> = Effect.succeed(42)

const program1 = Effect.match(success, {
  onFailure: (error) => `failure: ${error.message}`,
  onSuccess: (value) => `success: ${value}`
})

// Run and log the result of the successful effect
Effect.runPromise(program1).then(console.log)
// Output: "success: 42"

const failure: Effect.Effect<number, Error> = Effect.fail(
  new Error("Uh oh!")
)

const program2 = Effect.match(failure, {
  onFailure: (error) => `failure: ${error.message}`,
  onSuccess: (value) => `success: ${value}`
})

// Run and log the result of the failed effect
Effect.runPromise(program2).then(console.log)
// Output: "failure: Uh oh!"
```

**See**

- `matchEffect` if you need to perform side effects in the handlers.

**Signature**

```ts
declare const match: { <E, A2, A, A3>(options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, never, R>; <A, E, R, A2, A3>(self: Effect<A, E, R>, options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3; }): Effect<A2 | A3, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10598)

Since v2.0.0