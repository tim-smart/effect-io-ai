Package: `effect`<br />
Module: `Effect`<br />

## Effect.timeout

Adds a time limit to an effect, triggering a timeout if the effect exceeds
the duration.

**Details**

This function allows you to enforce a time limit on the execution of an
effect. If the effect does not complete within the given duration, it fails
with a `TimeoutException`. This is useful for preventing tasks from hanging
indefinitely, especially in scenarios where responsiveness or resource limits
are critical.

The returned effect will either:
- Succeed with the original effect's result if it completes within the
  specified duration.
- Fail with a `TimeoutException` if the time limit is exceeded.

**Example**

```ts
import { Effect } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

// Output will show a TimeoutException as the task takes longer
// than the specified timeout duration
const timedEffect = task.pipe(Effect.timeout("1 second"))

Effect.runPromiseExit(timedEffect).then(console.log)
// Output:
// Start processing...
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Fail',
//     failure: { _tag: 'TimeoutException' }
//   }
// }
```

**See**

- `timeoutFail` for a version that raises a custom error.
- `timeoutFailCause` for a version that raises a custom defect.
- `timeoutTo` for a version that allows specifying both success and
timeout handlers.

**Signature**

```ts
declare const timeout: { (duration: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | Cause.TimeoutException, R>; <A, E, R>(self: Effect<A, E, R>, duration: Duration.DurationInput): Effect<A, Cause.TimeoutException | E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7005)

Since v2.0.0