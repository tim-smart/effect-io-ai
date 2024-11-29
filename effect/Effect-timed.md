# timed

Returns a new effect that executes this one and times the execution.

To import and use `timed` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.timed
undefined

**Signature**

```ts
export declare const timed: <A, E, R>(self: Effect<A, E, R>) => Effect<[Duration.Duration, A], E, R>
```
