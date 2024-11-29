# asVoid

This function maps the success value of an `Effect` value to `void`. If the
original `Effect` value succeeds, the returned `Effect` value will also
succeed. If the original `Effect` value fails, the returned `Effect` value
will fail with the same error.

To import and use `asVoid` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.asVoid
undefined

**Signature**

```ts
export declare const asVoid: <A, E, R>(self: Effect<A, E, R>) => Effect<void, E, R>
```
