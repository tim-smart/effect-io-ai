# onExit

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

To import and use `onExit` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.onExit
```

**Example**

```ts
import { Console, Effect, Exit } from "effect"

// Define a cleanup function that logs the outcome of the effect
const handler = Effect.onExit((exit) => Console.log(`Cleanup completed: ${Exit.getOrElse(exit, String)}`))

const success = Console.log("Task completed").pipe(Effect.as("some result"), handler)

// Effect.runFork(success)
// Output:
// Task completed
// Cleanup completed: some result

const failure = Console.log("Task failed").pipe(Effect.andThen(Effect.fail("some error")), handler)

// Effect.runFork(failure)
// Output:
// Task failed
// Cleanup completed: Error: some error

const interruption = Console.log("Task interrupted").pipe(Effect.andThen(Effect.interrupt), handler)

// Effect.runFork(interruption)
// Output:
// Task interrupted
// Cleanup completed: All fibers interrupted without errors.
```

**Signature**

```ts
export declare const onExit: {
  <A, E, X, R2>(
    cleanup: (exit: Exit.Exit<A, E>) => Effect<X, never, R2>
  ): <R>(self: Effect<A, E, R>) => Effect<A, E, R2 | R>
  <A, E, R, X, R2>(
    self: Effect<A, E, R>,
    cleanup: (exit: Exit.Exit<A, E>) => Effect<X, never, R2>
  ): Effect<A, E, R | R2>
}
```
