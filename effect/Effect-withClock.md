# withClock

Executes the specified workflow with the specified implementation of the
clock service.

To import and use `withClock` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.withClock
undefined

**Signature**

```ts
export declare const withClock: {
  <X extends Clock.Clock>(value: X): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <X extends Clock.Clock, A, E, R>(effect: Effect<A, E, R>, value: X): Effect<A, E, R>
}
```
