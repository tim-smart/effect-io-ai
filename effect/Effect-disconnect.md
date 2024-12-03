# disconnect

Provides a way to handle timeouts in uninterruptible effects, allowing them
to continue in the background while the main control flow proceeds with the
timeout error.

The `disconnect` function allows an uninterruptible effect to continue
running in the background, while enabling the main control flow to
immediately recognize a timeout condition. This is useful when you want to
avoid blocking the program due to long-running tasks, especially when those
tasks do not need to affect the flow of the rest of the program.

Without `disconnect`, an uninterruptible effect will ignore the
timeout and continue executing until it completes. The timeout error will
only be assessed after the effect finishes, which can cause delays in
recognizing a timeout.

With `disconnect`, the uninterruptible effect proceeds in the
background while the main program flow can immediately handle the timeout
error or trigger alternative logic. This enables faster timeout handling
without waiting for the completion of the long-running task.

To import and use `disconnect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.disconnect
```

**Example**

```ts
import { Effect } from "effect"

const longRunningTask = Effect.gen(function* () {
  console.log("Start heavy processing...")
  yield* Effect.sleep("5 seconds") // Simulate a long process
  console.log("Heavy processing done.")
  return "Data processed"
})

const timedEffect = longRunningTask.pipe(
  Effect.uninterruptible,
  // Allows the task to finish in the background if it times out
  Effect.disconnect,
  Effect.timeout("1 second")
)

Effect.runPromiseExit(timedEffect).then(console.log)
// Output:
// Start heavy processing...
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Fail',
//     failure: { _tag: 'TimeoutException' }
//   }
// }
// Heavy processing done.
```

**Signature**

```ts
export declare const disconnect: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
