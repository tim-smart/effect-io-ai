# addDelayEffect

Returns a new schedule with the given effectfully computed delay added to
every interval defined by this schedule.

To import and use `addDelayEffect` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.addDelayEffect
```

**Signature**

```ts
export declare const addDelayEffect: {
  <Out, Env2>(f: (out: Out) => Effect.Effect<Env2, never, Duration.Duration>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(
    self: Schedule<Env, In, Out>,
    f: (out: Out) => Effect.Effect<Env2, never, Duration.Duration>
  ): Schedule<Env | Env2, In, Out>
}
```
