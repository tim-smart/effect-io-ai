Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapError

Runs an effectful operation when the source effect fails, while preserving
the original failure when the operation succeeds.

**Details**

Use this for logging, metrics, or other failure-side observations. If the
operation passed to `tapError` fails, that error is also represented in the
returned effect's error channel.

**Example** (Running effects on failure)

```ts
import { Console, Effect } from "effect"

// Simulate a task that fails with an error
const task: Effect.Effect<number, string> = Effect.fail("NetworkError")

// Use tapError to log the error message when the task fails
const tapping = Effect.tapError(
  task,
  (error) => Console.log(`expected error: ${error}`)
)

Effect.runFork(tapping)
// Output:
// expected error: NetworkError
```

**Signature**

```ts
declare const tapError: { <E, X, E2, R2>(f: (e: NoInfer<E>) => Effect<X, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: Effect<A, E, R>, f: (e: E) => Effect<X, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3606)

Since v2.0.0