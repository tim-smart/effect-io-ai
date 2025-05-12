Package: `effect`<br />
Module: `Effect`<br />

## Effect.delay

Delays the execution of an effect by a specified `Duration`.

**Details

This function postpones the execution of the provided effect by the specified
duration. The duration can be provided in various formats supported by the
`Duration` module.

Internally, this function does not block the thread; instead, it uses an
efficient, non-blocking mechanism to introduce the delay.

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

Effect.runFork(program)
// Output:
// start
// Task executed
```

**Signature**

```ts
declare const delay: { (duration: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, duration: Duration.DurationInput): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6842)

Since v2.0.0