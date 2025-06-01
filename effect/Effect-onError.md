Package: `effect`<br />
Module: `Effect`<br />

## Effect.onError

Ensures a cleanup effect runs whenever the calling effect fails, providing
the failure cause to the cleanup effect.

**Details**

This function allows you to attach a cleanup effect that runs whenever the
calling effect fails. The cleanup effect receives the cause of the failure,
allowing you to perform actions such as logging, releasing resources, or
executing additional recovery logic based on the error. The cleanup effect
will execute even if the failure is due to interruption.

Importantly, the cleanup effect itself is uninterruptible, ensuring that it
completes regardless of external interruptions.

**Example** (Running Cleanup Only on Failure)

```ts
import { Console, Effect } from "effect"

// This handler logs the failure cause when the effect fails
const handler = Effect.onError((cause) =>
  Console.log(`Cleanup completed: ${cause}`)
)

// Define a successful effect
const success = Console.log("Task completed").pipe(
  Effect.as("some result"),
  handler
)

Effect.runFork(success)
// Output:
// Task completed

// Define a failing effect
const failure = Console.log("Task failed").pipe(
  Effect.andThen(Effect.fail("some error")),
  handler
)

Effect.runFork(failure)
// Output:
// Task failed
// Cleanup completed: Error: some error

// Define a failing effect
const defect = Console.log("Task failed with defect").pipe(
  Effect.andThen(Effect.die("Boom!")),
  handler
)

Effect.runFork(defect)
// Output:
// Task failed with defect
// Cleanup completed: Error: Boom!

// Define an interrupted effect
const interruption = Console.log("Task interrupted").pipe(
  Effect.andThen(Effect.interrupt),
  handler
)

Effect.runFork(interruption)
// Output:
// Task interrupted
// Cleanup completed: All fibers interrupted without errors.
```

**See**

- `ensuring` for attaching a cleanup effect that runs on both success and failure.
- `onExit` for attaching a cleanup effect that runs on all possible exits.

**Signature**

```ts
declare const onError: { <E, X, R2>(cleanup: (cause: Cause.Cause<E>) => Effect<X, never, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R2 | R>; <A, E, R, X, R2>(self: Effect<A, E, R>, cleanup: (cause: Cause.Cause<E>) => Effect<X, never, R2>): Effect<A, E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5842)

Since v2.0.0