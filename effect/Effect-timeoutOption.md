Package: `effect`<br />
Module: `Effect`<br />

## Effect.timeoutOption

Runs an effect with a time limit and represents only the timeout case as
`Option.none`.

**When to use**

Use when a timeout of an `Effect` should be handled as `Option.none`.

**Details**

If the source effect succeeds before the timeout, the returned effect
succeeds with `Option.some(value)`. If the timeout wins, the source effect is
interrupted and the returned effect succeeds with `Option.none`. If the
source effect fails before the timeout, that failure is preserved.

**Example** (Returning None on timeout)

```ts
import { Effect } from "effect"

const task = Effect.gen(function*() {
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

**See**

- `timeout` for a version that raises a `TimeoutException`.
- `timeoutOrElse` for a version that allows specifying both success and timeout handlers.

**Signature**

```ts
declare const timeoutOption: { (duration: Duration.Input): <A, E, R>(self: Effect<A, E, R>) => Effect<Option<A>, E, R>; <A, E, R>(self: Effect<A, E, R>, duration: Duration.Input): Effect<Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4553)

Since v3.1.0