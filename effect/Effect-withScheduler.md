# withScheduler

Sets the provided scheduler for usage in the wrapped effect

To import and use `withScheduler` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withScheduler
```

**Signature**

```ts
export declare const withScheduler: {
  (scheduler: Scheduler.Scheduler): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, scheduler: Scheduler.Scheduler): Effect<A, E, R>
}
```
