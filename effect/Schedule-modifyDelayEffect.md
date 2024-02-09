# modifyDelayEffect

Returns a new schedule that modifies the delay using the specified
effectual function.

To import and use `modifyDelayEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.modifyDelayEffect
```

**Signature**

```ts
export declare const modifyDelayEffect: {
  <Out, Env2>(
    f: (out: Out, duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, Env2>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(
    self: Schedule<Env, In, Out>,
    f: (out: Out, duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, Env2>
  ): Schedule<Env | Env2, In, Out>
}
```
