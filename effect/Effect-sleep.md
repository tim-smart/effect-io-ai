Package: `effect`<br />
Module: `Effect`<br />

## Effect.sleep

Suspends the execution of an effect for a specified `Duration`.

**Details**

This function pauses the execution of an effect for a given duration. It is
asynchronous, meaning that it does not block the fiber executing the effect.
Instead, the fiber is suspended during the delay period and can resume once
the specified time has passed.

The duration can be specified using various formats supported by the
`Duration` module, such as a string (`"2 seconds"`) or numeric value
representing milliseconds.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
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
declare const sleep: (duration: Duration.DurationInput) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6745)

Since v2.0.0