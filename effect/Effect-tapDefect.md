Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapDefect

Inspect severe errors or defects (non-recoverable failures) in an effect.

**Details**

This function is specifically designed to handle and inspect defects, which
are critical failures in your program, such as unexpected runtime exceptions
or system-level errors. Unlike normal recoverable errors, defects typically
indicate serious issues that cannot be addressed through standard error
handling.

When a defect occurs in an effect, the function you provide to this function
will be executed, allowing you to log, monitor, or handle the defect in some
way. Importantly, this does not alter the main result of the effect. If no
defect occurs, the effect behaves as if this function was not used.

**Example**

```ts
import { Effect, Console } from "effect"

// Simulate a task that fails with a recoverable error
const task1: Effect.Effect<number, string> = Effect.fail("NetworkError")

// tapDefect won't log anything because NetworkError is not a defect
const tapping1 = Effect.tapDefect(task1, (cause) =>
  Console.log(`defect: ${cause}`)
)

Effect.runFork(tapping1)
// No Output

// Simulate a severe failure in the system
const task2: Effect.Effect<number, string> = Effect.dieMessage(
  "Something went wrong"
)

// Log the defect using tapDefect
const tapping2 = Effect.tapDefect(task2, (cause) =>
  Console.log(`defect: ${cause}`)
)

Effect.runFork(tapping2)
// Output:
// defect: RuntimeException: Something went wrong
//   ... stack trace ...
```

**Signature**

```ts
declare const tapDefect: { <X, E2, R2>(f: (cause: Cause.Cause<never>) => Effect<X, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: Effect<A, E, R>, f: (cause: Cause.Cause<never>) => Effect<X, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9663)

Since v2.0.0