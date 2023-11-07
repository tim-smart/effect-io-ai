# withClock

Executes the specified workflow with the specified implementation of the
clock service.

To import and use `withClock` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.withClock
```

**Signature**

```ts
export declare const withClock: {
  <A extends Clock.Clock>(value: A): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A extends Clock.Clock>(effect: Effect<R, E, A>, value: A): Effect<R, E, A>
}
```
