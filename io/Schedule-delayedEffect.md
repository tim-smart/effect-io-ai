# delayedEffect

Returns a new schedule with the specified effectfully computed delay added
before the start of each interval produced by this schedule.

To import and use `delayedEffect` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.delayedEffect
```

**Signature**

```ts
export declare const delayedEffect: {
  <Env2>(f: (duration: Duration.Duration) => Effect.Effect<Env2, never, Duration.Duration>): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(
    self: Schedule<Env, In, Out>,
    f: (duration: Duration.Duration) => Effect.Effect<Env2, never, Duration.Duration>
  ): Schedule<Env | Env2, In, Out>
}
```
