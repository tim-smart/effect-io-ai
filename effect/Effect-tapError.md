Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapError

Execute a side effect on failure without modifying the original effect.

**Details**

This function allows you to inspect and react to the failure of an effect by
executing an additional effect. The failure value is passed to the provided
function, enabling you to log it, track it, or perform any other operation.
Importantly, the original failure remains intact and is re-propagated, so the
effect's behavior is unchanged.

The side effect you provide is only executed when the effect fails. If the
effect succeeds, the function is ignored, and the success value is propagated
as usual.

**Example**

```ts
import { Effect, Console } from "effect"

// Simulate a task that fails with an error
const task: Effect.Effect<number, string> = Effect.fail("NetworkError")

// Use tapError to log the error message when the task fails
const tapping = Effect.tapError(task, (error) =>
  Console.log(`expected error: ${error}`)
)

Effect.runFork(tapping)
// Output:
// expected error: NetworkError
```

**Signature**

```ts
declare const tapError: { <E, X, E2, R2>(f: (e: NoInfer<E>) => Effect<X, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: Effect<A, E, R>, f: (e: E) => Effect<X, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9738)

Since v2.0.0