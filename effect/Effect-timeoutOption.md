Package: `effect`<br />
Module: `Effect`<br />

## Effect.timeoutOption

Gracefully handles timeouts by returning an `Option` that represents either
the result or a timeout.

**Details**

This function wraps the outcome of an effect in an `Option` type. If the
effect completes within the specified duration, it returns a `Some`
containing the result. If the effect times out, it returns a `None`. Unlike
other timeout methods, this approach does not raise errors or exceptions;
instead, it allows you to treat timeouts as a regular outcome, simplifying
the logic for handling delays.

**When to Use**

This is useful when you want to handle timeouts without causing the program
to fail, making it easier to manage situations where you expect tasks might
take too long but want to continue executing other tasks.

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

// Effect.runPromise(timedOutEffect).then(console.log)
// Output:
// Start processing...
// Processing complete.
// Start processing...
// [
//   { _id: 'Option', _tag: 'Some', value: 'Result' },
//   { _id: 'Option', _tag: 'None' }
// ]
```

**See**

- `timeout` for a version that raises a `TimeoutException`.
- `timeoutFail` for a version that raises a custom error.
- `timeoutFailCause` for a version that raises a custom defect.
- `timeoutTo` for a version that allows specifying both success and
timeout handlers.

**Signature**

```ts
declare const timeoutOption: { (duration: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>; <A, E, R>(self: Effect<A, E, R>, duration: Duration.DurationInput): Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6927)

Since v3.1.0