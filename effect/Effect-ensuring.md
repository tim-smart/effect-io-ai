Package: `effect`<br />
Module: `Effect`<br />

## Effect.ensuring

Guarantees the execution of a finalizer when an effect starts execution.

**Details**

This function allows you to specify a `finalizer` effect that will always be
run once the effect starts execution, regardless of whether the effect
succeeds, fails, or is interrupted.

**When to Use**

This is useful when you need to ensure that certain cleanup or final steps
are executed in all cases, such as releasing resources or performing
necessary logging.

While this function provides strong guarantees about executing the finalizer,
it is considered a low-level tool, which may not be ideal for more complex
resource management. For higher-level resource management with automatic
acquisition and release, see the `acquireRelease` family of functions.
For use cases where you need access to the result of an effect, consider
using `onExit`.

**Example** (Running a Finalizer in All Outcomes)

```ts
import { Console, Effect } from "effect"

// Define a cleanup effect
const handler = Effect.ensuring(Console.log("Cleanup completed"))

// Define a successful effect
const success = Console.log("Task completed").pipe(
  Effect.as("some result"),
  handler
)

Effect.runFork(success)
// Output:
// Task completed
// Cleanup completed

// Define a failing effect
const failure = Console.log("Task failed").pipe(
  Effect.andThen(Effect.fail("some error")),
  handler
)

Effect.runFork(failure)
// Output:
// Task failed
// Cleanup completed

// Define an interrupted effect
const interruption = Console.log("Task interrupted").pipe(
  Effect.andThen(Effect.interrupt),
  handler
)

Effect.runFork(interruption)
// Output:
// Task interrupted
// Cleanup completed
```

**See**

- `onExit` for a version that provides access to the result of an
effect.

**Signature**

```ts
declare const ensuring: { <X, R1>(finalizer: Effect<X, never, R1>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R1 | R>; <A, E, R, X, R1>(self: Effect<A, E, R>, finalizer: Effect<X, never, R1>): Effect<A, E, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5755)

Since v2.0.0