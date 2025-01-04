# tapErrorCause

Inspect the complete cause of an error, including failures and defects.

**Details**

This function provides access to the full cause of an error, including both
recoverable failures and irrecoverable defects. It allows you to handle, log,
or monitor specific error causes without modifying the result of the effect.
The full `Cause` object encapsulates the error and its contextual
information, making it useful for debugging and understanding failure
scenarios in complex workflows.

The effect itself is not modified, and any errors or defects remain in the
error channel of the original effect.

To import and use `tapErrorCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapErrorCause
```

**Example**

```ts
import { Effect, Console } from "effect"

// Create a task that fails with a NetworkError
const task1: Effect.Effect<number, string> = Effect.fail("NetworkError")

const tapping1 = Effect.tapErrorCause(task1, (cause) => Console.log(`error cause: ${cause}`))

// Effect.runFork(tapping1)
// Output:
// error cause: Error: NetworkError

// Simulate a severe failure in the system
const task2: Effect.Effect<number, string> = Effect.dieMessage("Something went wrong")

const tapping2 = Effect.tapErrorCause(task2, (cause) => Console.log(`error cause: ${cause}`))

// Effect.runFork(tapping2)
// Output:
// error cause: RuntimeException: Something went wrong
//   ... stack trace ...
```

**Signature**

```ts
export declare const tapErrorCause: {
  <E, X, E2, R2>(
    f: (cause: Cause.Cause<NoInfer<E>>) => Effect<X, E2, R2>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R2 | R>
  <A, E, R, X, E2, R2>(
    self: Effect<A, E, R>,
    f: (cause: Cause.Cause<E>) => Effect<X, E2, R2>
  ): Effect<A, E | E2, R | R2>
}
```
