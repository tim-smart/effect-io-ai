# delay

Delays the execution of an effect by a specified `Duration`.

\*\*Details

This function postpones the execution of the provided effect by the specified
duration. The duration can be provided in various formats supported by the
`Duration` module.

Internally, this function does not block the thread; instead, it uses an
efficient, non-blocking mechanism to introduce the delay.

To import and use `delay` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.delay
```

**Example**

```ts
import { Console, Effect } from "effect"

const task = Console.log("Task executed")

const program = Console.log("start").pipe(
  Effect.andThen(
    // Delays the log message by 2 seconds
    task.pipe(Effect.delay("2 seconds"))
  )
)

// Effect.runFork(program)
// Output:
// start
// Task executed
```

**Signature**

```ts
export declare const delay: {
  (duration: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, duration: Duration.DurationInput): Effect<A, E, R>
}
```
