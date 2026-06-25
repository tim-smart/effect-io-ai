Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapDefect

Runs an effectful operation when the source effect dies with a defect.

**Details**

Use this for diagnostics such as logging unexpected thrown exceptions or
values passed to `die`. Recoverable failures are not handled. When the
operation succeeds, the original defect is preserved; if the operation fails,
its error is also represented in the returned effect.

**Example** (Observing defects)

```ts
import { Console, Effect } from "effect"

// Simulate a task that fails with a recoverable error
const task1: Effect.Effect<number, string> = Effect.fail("NetworkError")

// tapDefect won't log anything because NetworkError is not a defect
const tapping1 = Effect.tapDefect(
  task1,
  (cause) => Console.log(`defect: ${cause}`)
)

Effect.runFork(tapping1)
// No Output

// Simulate a severe failure in the system
const task2: Effect.Effect<number> = Effect.die(
  "Something went wrong"
)

// Log the defect using tapDefect
const tapping2 = Effect.tapDefect(
  task2,
  (cause) => Console.log(`defect: ${cause}`)
)

Effect.runFork(tapping2)
// Output:
// defect: RuntimeException: Something went wrong
//   ... stack trace ...
```

**Signature**

```ts
declare const tapDefect: { <E, B, E2, R2>(f: (defect: unknown) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: (defect: unknown) => Effect<B, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3892)

Since v2.0.0