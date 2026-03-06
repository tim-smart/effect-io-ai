Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapError

The `tapError` function executes an effectful operation to inspect the
failure of an effect without modifying it.

This function is useful when you want to perform some side effect (like
logging or tracking) on the failure of an effect, but without changing the
result of the effect itself. The error remains in the effect's error channel,
while the operation you provide can inspect or act on it.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3629)

Since v2.0.0