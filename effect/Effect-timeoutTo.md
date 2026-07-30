Package: `effect`<br />
Module: `Effect`<br />

## Effect.timeoutTo

Provides custom behavior for successful and timed-out operations.

**Details**

This function allows you to define distinct outcomes for an effect depending
on whether it completes within a specified time frame or exceeds the timeout
duration. You can provide:
- `onSuccess`: A handler for processing the result of the effect if it
  completes successfully within the time limit.
- `onTimeout`: A handler for generating a result when the effect times out.
- `duration`: The maximum allowed time for the effect to complete.

**When to Use**

Unlike `timeout`, which raises an exception for timeouts, this function
gives you full control over the behavior for both success and timeout
scenarios. It is particularly useful when you want to encapsulate timeouts
and successes into a specific data structure, like an `Either` type, to
represent these outcomes in a meaningful way.

**Example**

```ts
import { Effect, Either } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

const program = task.pipe(
  Effect.timeoutTo({
    duration: "1 second",
    onSuccess: (result): Either.Either<string, string> =>
      Either.right(result),
    onTimeout: (): Either.Either<string, string> =>
      Either.left("Timed out!")
  })
)

Effect.runPromise(program).then(console.log)
// Output:
// Start processing...
// {
//   _id: "Either",
//   _tag: "Left",
//   left: "Timed out!"
// }
```

**See**

- `timeout` for a version that raises a `TimeoutException`.
- `timeoutFail` for a version that raises a custom error.
- `timeoutFailCause` for a version that raises a custom defect.

**Signature**

```ts
declare const timeoutTo: { <A, B, B1>(options: { readonly onTimeout: LazyArg<B1>; readonly onSuccess: (a: A) => B; readonly duration: Duration.DurationInput; }): <E, R>(self: Effect<A, E, R>) => Effect<B | B1, E, R>; <A, E, R, B1, B>(self: Effect<A, E, R>, options: { readonly onTimeout: LazyArg<B1>; readonly onSuccess: (a: A) => B; readonly duration: Duration.DurationInput; }): Effect<B1 | B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7297)

Since v2.0.0