# cause

The `cause` function allows you to expose the detailed cause of an
effect, which includes a more precise representation of failures, such as
error messages and defects.

This function is helpful when you need to inspect the cause of a failure in
an effect, giving you more information than just the error message. It can be
used to log, handle, or analyze failures in more detail, including
distinguishing between different types of defects (e.g., runtime exceptions,
interruptions, etc.).

To import and use `cause` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.cause
undefined

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
export declare const cause: <A, E, R>(self: Effect<A, E, R>) => Effect<Cause.Cause<E>, never, R>
```
