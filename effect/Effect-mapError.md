# mapError

The `mapError` function is used to transform or modify the error
produced by an effect, without affecting its success value.

This function is helpful when you want to enhance the error with additional
information, change the error type, or apply custom error handling while
keeping the original behavior of the effect's success values intact. It only
operates on the error channel and leaves the success channel unchanged.

To import and use `mapError` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.mapError
```

**Example**

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const simulatedTask = Effect.fail("Oh no!").pipe(Effect.as(1))

//      ┌─── Effect<number, Error, never>
//      ▼
const mapped = Effect.mapError(simulatedTask, (message) => new Error(message))
```

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (e: E) => E2): <A, R>(self: Effect<A, E, R>) => Effect<A, E2, R>
  <A, E, R, E2>(self: Effect<A, E, R>, f: (e: E) => E2): Effect<A, E2, R>
}
```
