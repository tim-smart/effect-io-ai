# withClock

Executes the specified workflow with the specified implementation of the
clock service.

To import and use `withClock` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withClock
```

**Signature**

```ts
export declare const withClock: {
  <A extends Clock.Clock>(value: A): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <R, E, A extends Clock.Clock>(effect: Effect<A, E, R>, value: A): Effect<A, E, R>
}
```
