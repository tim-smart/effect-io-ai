# sleep

Suspends the execution of an effect for a specified `Duration`.

**Details**

This function pauses the execution of an effect for a given duration. It is
asynchronous, meaning that it does not block the fiber executing the effect.
Instead, the fiber is suspended during the delay period and can resume once
the specified time has passed.

The duration can be specified using various formats supported by the
`Duration` module, such as a string (`"2 seconds"`) or numeric value
representing milliseconds.

To import and use `sleep` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.sleep
```

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function* () {
  console.log("Starting task...")
  yield* Effect.sleep("3 seconds") // Waits for 3 seconds
  console.log("Task completed!")
})

// Effect.runFork(program)
// Output:
// Starting task...
// Task completed!
```

**Signature**

```ts
export declare const sleep: (duration: Duration.DurationInput) => Effect<void>
```
