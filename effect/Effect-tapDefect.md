# tapDefect

Specifically inspects non-recoverable failures or defects in an effect (i.e., one or more `Die` causes).

To import and use `tapDefect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapDefect
```

**Example**

```ts
import { Effect, Console } from "effect"

// Create an effect that is designed to fail, simulating an occurrence of a network error
const task1: Effect.Effect<number, string> = Effect.fail("NetworkError")

// this won't log anything because is not a defect
const tapping1 = Effect.tapDefect(task1, (cause) => Console.log(`defect: ${cause}`))

Effect.runFork(tapping1)
// No Output

// Simulate a severe failure in the system by causing a defect with a specific message.
const task2: Effect.Effect<number, string> = Effect.dieMessage("Something went wrong")

// This will only log defects, not errors
const tapping2 = Effect.tapDefect(task2, (cause) => Console.log(`defect: ${cause}`))

Effect.runFork(tapping2)
// Output:
// defect: RuntimeException: Something went wrong
//   ... stack trace ...
```

**Signature**

```ts
export declare const tapDefect: {
  <X, E2, R2>(
    f: (cause: Cause.Cause<never>) => Effect<X, E2, R2>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2 | E, R2 | R>
  <A, E, R, X, E2, R2>(
    self: Effect<A, E, R>,
    f: (cause: Cause.Cause<never>) => Effect<X, E2, R2>
  ): Effect<A, E | E2, R | R2>
}
```
