Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapError

Transforms or modifies the error produced by an effect without affecting its
success value.

**When to Use**

This function is helpful when you want to enhance the error with additional
information, change the error type, or apply custom error handling while
keeping the original behavior of the effect's success values intact. It only
operates on the error channel and leaves the success channel unchanged.

**Example**

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const simulatedTask = Effect.fail("Oh no!").pipe(Effect.as(1))

//      ┌─── Effect<number, Error, never>
//      ▼
const mapped = Effect.mapError(
  simulatedTask,
  (message) => new Error(message)
)
```

**See**

- `map` for a version that operates on the success channel.
- `mapBoth` for a version that operates on both channels.
- `orElseFail` if you want to replace the error with a new one.

**Signature**

```ts
declare const mapError: { <E, E2>(f: (e: E) => E2): <A, R>(self: Effect<A, E, R>) => Effect<A, E2, R>; <A, E, R, E2>(self: Effect<A, E, R>, f: (e: E) => E2): Effect<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5310)

Since v2.0.0