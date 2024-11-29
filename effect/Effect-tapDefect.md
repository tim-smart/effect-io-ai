# tapDefect

The `tapDefect` function specifically inspects non-recoverable
failures or defects (i.e., one or more `Die` causes) in an effect.

This function is designed to catch severe errors in your program that
represent critical issues, like system failures or unexpected errors
(defects). It helps you log or handle these defects without altering the main
result of the effect, allowing for efficient debugging or monitoring of
severe errors.

To import and use `tapDefect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapDefect
undefined

**Example**

```ts
import { Effect, Console } from "effect"

// Simulate a task that fails with a recoverable error
const task1: Effect.Effect<number, string> = Effect.fail("NetworkError")

// tapDefect won't log anything because NetworkError is not a defect
const tapping1 = Effect.tapDefect(task1, (cause) => Console.log(`defect: ${cause}`))

Effect.runFork(tapping1)
// No Output

// Simulate a severe failure in the system
const task2: Effect.Effect<number, string> = Effect.dieMessage("Something went wrong")

// Log the defect using tapDefect
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
