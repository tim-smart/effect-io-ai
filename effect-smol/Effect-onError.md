Package: `effect`<br />
Module: `Effect`<br />

## Effect.onError

Runs the specified effect if this effect fails, providing the error to the
effect if it exists. The provided effect will not be interrupted.

**Example**

```ts
import { Cause, Data, Console, Effect } from "effect"

class TaskError extends Data.TaggedError("TaskError")<{ readonly message: string }> {}

const task = Effect.fail(new TaskError({ message: "Something went wrong" }))

const program = Effect.onError(
  task,
  (cause) => Console.log(`Cleanup on error: ${Cause.squash(cause)}`)
)

Effect.runPromise(program).catch(console.error)
// Output:
// Cleanup on error: TaskError: Something went wrong
// TaskError: Something went wrong
```

**Signature**

```ts
declare const onError: { <E, X, R2>(cleanup: (cause: Cause.Cause<E>) => Effect<X, never, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R2 | R>; <A, E, R, X, R2>(self: Effect<A, E, R>, cleanup: (cause: Cause.Cause<E>) => Effect<X, never, R2>): Effect<A, E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6433)

Since v2.0.0