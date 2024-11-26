# timeout

Adds a time limit to an effect, triggering a timeout if the effect exceeds
the duration.

The `timeout` function allows you to specify a time limit for an
effect's execution. If the effect does not complete within the given time, a
`TimeoutException` is raised. This can be useful for controlling how long
your program waits for a task to finish, ensuring that it doesn't hang
indefinitely if the task takes too long.

To import and use `timeout` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeout
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

**Signature**

```ts
export declare const timeout: {
  (duration: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | Cause.TimeoutException, R>
  <A, E, R>(self: Effect<A, E, R>, duration: Duration.DurationInput): Effect<A, Cause.TimeoutException | E, R>
}
```
