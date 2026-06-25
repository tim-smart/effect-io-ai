Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapError

Transforms the failure value of an effect without changing its success value.

**When to use**

Use to translate an `Effect`'s typed failures while leaving successful values
unchanged.

**Details**

Only the failure channel is transformed. The success channel and requirements
are preserved.

**Example** (Transforming the error channel)

```ts
import { Data, Effect } from "effect"

class TaskError extends Data.TaggedError("TaskError")<{ readonly message: string }> {}

//      ┌─── Effect<number, string, never>
//      ▼
const simulatedTask = Effect.fail("Oh no!").pipe(Effect.as(1))

//      ┌─── Effect<number, TaskError, never>
//      ▼
const mapped = Effect.mapError(
  simulatedTask,
  (message) => new TaskError({ message })
)
```

**See**

- `map` for a version that operates on the success channel.
- `mapBoth` for a version that operates on both channels.

**Signature**

```ts
declare const mapError: { <E, E2>(f: (e: E) => E2): <A, R>(self: Effect<A, E, R>) => Effect<A, E2, R>; <A, E, R, E2>(self: Effect<A, E, R>, f: (e: E) => E2): Effect<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3533)

Since v2.0.0