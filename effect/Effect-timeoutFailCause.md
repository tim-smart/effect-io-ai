# timeoutFailCause

Specifies a custom defect to be thrown when a timeout occurs.

**Details**

This function allows you to handle timeouts as exceptional cases by
generating a custom defect when an effect exceeds the specified duration. You
provide:

- A `duration`: The time limit for the effect.
- An `onTimeout` function: A lazy evaluation function that generates the
  custom defect (typically created using `Cause.die`).

If the effect completes within the time limit, its result is returned
normally. Otherwise, the custom defect is triggered, and the effect fails
with that defect.

**When to Use**

This is especially useful when you need to treat timeouts as critical
failures in your application and wish to include meaningful information in
the defect.

To import and use `timeoutFailCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeoutFailCause
```

**Example**

```ts
import { Effect, Cause } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

const program = task.pipe(
  Effect.timeoutFailCause({
    duration: "1 second",
    onTimeout: () => Cause.die("Timed out!") // Custom defect for timeout
  })
)

// Effect.runPromiseExit(program).then(console.log)
// Output:
// Start processing...
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Die', defect: 'Timed out!' }
// }
```

**Signature**

```ts
export declare const timeoutFailCause: {
  <E1>(options: {
    readonly onTimeout: LazyArg<Cause.Cause<E1>>
    readonly duration: Duration.DurationInput
  }): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E1 | E, R>
  <A, E, R, E1>(
    self: Effect<A, E, R>,
    options: { readonly onTimeout: LazyArg<Cause.Cause<E1>>; readonly duration: Duration.DurationInput }
  ): Effect<A, E | E1, R>
}
```
