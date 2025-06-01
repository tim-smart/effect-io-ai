Package: `effect`<br />
Module: `Effect`<br />

## Effect.timeoutFail

Specifies a custom error to be produced when a timeout occurs.

**Details**

This function allows you to handle timeouts in a customized way by defining a
specific error to be raised when an effect exceeds the given duration. Unlike
default timeout behaviors that use generic exceptions, this function gives
you the flexibility to specify a meaningful error type that aligns with your
application's needs.

When you apply this function, you provide:
- A `duration`: The time limit for the effect.
- An `onTimeout` function: A lazy evaluation function that generates the
  custom error if the timeout occurs.

If the effect completes within the time limit, its result is returned
normally. Otherwise, the `onTimeout` function is triggered, and its output is
used as the error for the effect.

**Example**

```ts
import { Effect } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

class MyTimeoutError {
  readonly _tag = "MyTimeoutError"
}

const program = task.pipe(
  Effect.timeoutFail({
    duration: "1 second",
    onTimeout: () => new MyTimeoutError() // Custom timeout error
  })
)

Effect.runPromiseExit(program).then(console.log)
// Output:
// Start processing...
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Fail',
//     failure: MyTimeoutError { _tag: 'MyTimeoutError' }
//   }
// }
```

**See**

- `timeout` for a version that raises a `TimeoutException`.
- `timeoutFailCause` for a version that raises a custom defect.
- `timeoutTo` for a version that allows specifying both success and
timeout handlers.

**Signature**

```ts
declare const timeoutFail: { <E1>(options: { readonly onTimeout: LazyArg<E1>; readonly duration: Duration.DurationInput; }): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E1 | E, R>; <A, E, R, E1>(self: Effect<A, E, R>, options: { readonly onTimeout: LazyArg<E1>; readonly duration: Duration.DurationInput; }): Effect<A, E | E1, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7165)

Since v2.0.0