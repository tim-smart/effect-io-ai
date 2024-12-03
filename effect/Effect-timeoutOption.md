# timeoutOption

Handles timeouts by returning an `Option` that represents either the result
or a timeout.

The `timeoutOption` function provides a way to gracefully handle
timeouts by wrapping the outcome of an effect in an `Option` type. If the
effect completes within the specified time, it returns a `Some` containing
the result. If the effect times out, it returns a `None`, allowing you to
treat the timeout as a regular result instead of throwing an error.

This is useful when you want to handle timeouts without causing the program
to fail, making it easier to manage situations where you expect tasks might
take too long but want to continue executing other tasks.

To import and use `timeoutOption` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeoutOption
```

**Example**

```ts
import { Effect } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

const timedOutEffect = Effect.all([
  task.pipe(Effect.timeoutOption("3 seconds")),
  task.pipe(Effect.timeoutOption("1 second"))
])

Effect.runPromise(timedOutEffect).then(console.log)
// Output:
// Start processing...
// Processing complete.
// Start processing...
// [
//   { _id: 'Option', _tag: 'Some', value: 'Result' },
//   { _id: 'Option', _tag: 'None' }
// ]
```

**Signature**

```ts
export declare const timeoutOption: {
  (duration: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>
  <A, E, R>(self: Effect<A, E, R>, duration: Duration.DurationInput): Effect<Option.Option<A>, E, R>
}
```
