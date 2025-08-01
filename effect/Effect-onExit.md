Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExit

Guarantees that a cleanup function runs regardless of whether the effect
succeeds, fails, or is interrupted.

**Details**

This function ensures that a provided cleanup function is executed after the
effect completes, regardless of the outcome. The cleanup function is given
the `Exit` value of the effect, which provides detailed information about the
result:
- If the effect succeeds, the `Exit` contains the success value.
- If the effect fails, the `Exit` contains the error or failure cause.
- If the effect is interrupted, the `Exit` reflects the interruption.

The cleanup function is guaranteed to run uninterruptibly, ensuring reliable
resource management even in complex or high-concurrency scenarios.

**Example** (Running a Cleanup Function with the Effect’s Result)

```ts
import { Console, Effect, Exit } from "effect"

// Define a cleanup effect that logs the result
const handler = Effect.onExit((exit) =>
  Console.log(`Cleanup completed: ${Exit.getOrElse(exit, String)}`)
)

// Define a successful effect
const success = Console.log("Task completed").pipe(
  Effect.as("some result"),
  handler
)

Effect.runFork(success)
// Output:
// Task completed
// Cleanup completed: some result

// Define a failing effect
const failure = Console.log("Task failed").pipe(
  Effect.andThen(Effect.fail("some error")),
  handler
)

Effect.runFork(failure)
// Output:
// Task failed
// Cleanup completed: Error: some error

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

**Signature**

```ts
declare const onExit: { <A, E, X, R2>(cleanup: (exit: Exit.Exit<A, E>) => Effect<X, never, R2>): <R>(self: Effect<A, E, R>) => Effect<A, E, R2 | R>; <A, E, R, X, R2>(self: Effect<A, E, R>, cleanup: (exit: Exit.Exit<A, E>) => Effect<X, never, R2>): Effect<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5909)

Since v2.0.0