# onInterrupt

Registers a cleanup effect to run when an effect is interrupted.

**Details**

This function allows you to specify an effect to run when the fiber is
interrupted. This effect will be executed when the fiber is interrupted,
allowing you to perform cleanup or other actions.

To import and use `onInterrupt` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.onInterrupt
```

**Example**

```ts
// Title: Running a Cleanup Action on Interruption
import { Console, Effect } from "effect"

// This handler is executed when the fiber is interrupted
const handler = Effect.onInterrupt((_fibers) => Console.log("Cleanup completed"))

const success = Console.log("Task completed").pipe(Effect.as("some result"), handler)

// Effect.runFork(success)
// Output:
// Task completed

const failure = Console.log("Task failed").pipe(Effect.andThen(Effect.fail("some error")), handler)

// Effect.runFork(failure)
// Output:
// Task failed

const interruption = Console.log("Task interrupted").pipe(Effect.andThen(Effect.interrupt), handler)

// Effect.runFork(interruption)
// Output:
// Task interrupted
// Cleanup completed
```

**Signature**

```ts
export declare const onInterrupt: {
  <X, R2>(
    cleanup: (interruptors: HashSet.HashSet<FiberId.FiberId>) => Effect<X, never, R2>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R2 | R>
  <A, E, R, X, R2>(
    self: Effect<A, E, R>,
    cleanup: (interruptors: HashSet.HashSet<FiberId.FiberId>) => Effect<X, never, R2>
  ): Effect<A, E, R | R2>
}
```
