# merge

The `merge` function combines both the error and success channels of
an effect, creating a new effect that never fails.

This function transforms an effect that may fail into one that always returns
a value, where both success and failure outcomes are handled as values in the
success channel. This can be useful when you want to continue execution
regardless of the error type and still capture both successful results and
errors as part of the outcome.

To import and use `merge` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.merge
undefined

**Example**

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const program = Effect.fail("Oh uh!").pipe(Effect.as(2))

//      ┌─── Effect<number | string, never, never>
//      ▼
const recovered = Effect.merge(program)
```

**Signature**

```ts
export declare const merge: <A, E, R>(self: Effect<A, E, R>) => Effect<E | A, never, R>
```
