# withClock

Executes the specified workflow with the specified implementation of the
`Clock` service.

To import and use `withClock` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withClock
```

**Signature**

```ts
export declare const withClock: {
  <C extends Clock.Clock>(clock: C): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <C extends Clock.Clock, A, E, R>(effect: Effect<A, E, R>, clock: C): Effect<A, E, R>
}
```
