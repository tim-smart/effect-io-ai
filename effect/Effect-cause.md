Package: `effect`<br />
Module: `Effect`<br />

## Effect.cause

Retrieves the cause of a failure in an effect.

**Details**

This function allows you to expose the detailed cause of an effect, which
includes a more precise representation of failures, such as error messages
and defects.

**When to Use**

This function is helpful when you need to inspect the cause of a failure in
an effect, giving you more information than just the error message. It can be
used to log, handle, or analyze failures in more detail, including
distinguishing between different types of defects (e.g., runtime exceptions,
interruptions, etc.).

**Example**

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const program = Effect.fail("Oh uh!").pipe(Effect.as(2))

//      ┌─── Effect<void, never, never>
//      ▼
const recovered = Effect.gen(function* () {
  const cause = yield* Effect.cause(program)
  yield* Console.log(cause)
})
```

**Signature**

```ts
declare const cause: <A, E, R>(self: Effect<A, E, R>) => Effect<Cause.Cause<E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4042)

Since v2.0.0