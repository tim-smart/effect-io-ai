# tapErrorCause

Inspects the underlying cause of an effect's failure.

To import and use `tapErrorCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapErrorCause
```

**Example**

```ts
import { Effect, Console } from "effect"

// Create an effect that is designed to fail, simulating an occurrence of a network error
const task1: Effect.Effect<number, string> = Effect.fail("NetworkError")

// This will log the cause of any expected error or defect
const tapping1 = Effect.tapErrorCause(task1, (cause) => Console.log(`error cause: ${cause}`))

Effect.runFork(tapping1)
// Output:
// error cause: Error: NetworkError

// Simulate a severe failure in the system by causing a defect with a specific message.
const task2: Effect.Effect<number, string> = Effect.dieMessage("Something went wrong")

// This will log the cause of any expected error or defect
const tapping2 = Effect.tapErrorCause(task2, (cause) => Console.log(`error cause: ${cause}`))

Effect.runFork(tapping2)
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
