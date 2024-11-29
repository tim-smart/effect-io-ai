# isFailure

Returns `true` if this effect is a failure, `false` otherwise.

To import and use `isFailure` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.isFailure
undefined

**Signature**

```ts
export declare const isFailure: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```
