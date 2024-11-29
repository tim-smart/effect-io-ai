# modifyDelayEffect

Returns a new schedule that modifies the delay using the specified
effectual function.

To import and use `modifyDelayEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.modifyDelayEffect
undefined

**Signature**

```ts
export declare const modifyDelayEffect: {
  <Out, R2>(
    f: (out: Out, duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out, duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
