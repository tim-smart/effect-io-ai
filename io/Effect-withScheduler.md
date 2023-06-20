# withScheduler

Sets the provided scheduler for usage in the wrapped effect

To import and use `withScheduler` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withScheduler
```

**Signature**

```ts
export declare const withScheduler: {
  (scheduler: Scheduler): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, scheduler: Scheduler): Effect<R, E, B>
}
```
