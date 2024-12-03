# tapErrorCause

The `tapErrorCause` function allows you to inspect the complete cause
of an error, including failures and defects.

This function is helpful when you need to log, monitor, or handle specific
error causes in your effects. It gives you access to the full error cause,
whether it’s a failure, defect, or other exceptional conditions, without
altering the error or the overall result of the effect.

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

Effect.runFork(tapping1)
// Output:
// error cause: Error: NetworkError

// Simulate a severe failure in the system
const task2: Effect.Effect<number, string> = Effect.dieMessage("Something went wrong")

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
