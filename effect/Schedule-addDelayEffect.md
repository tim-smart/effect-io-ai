# addDelayEffect

Returns a new schedule with the given effectfully computed delay added to
every interval defined by this schedule.

To import and use `addDelayEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.addDelayEffect
undefined

**Signature**

```ts
export declare const addDelayEffect: {
  <Out, R2>(
    f: (out: Out) => Effect.Effect<Duration.DurationInput, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out) => Effect.Effect<Duration.DurationInput, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
