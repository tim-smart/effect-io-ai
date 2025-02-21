# addDelayEffect

Adds an effectfully computed delay to every interval in a schedule.

**Details**

This function modifies a given schedule by applying an additional delay to
each interval, where the delay is determined by an effectful function. The
function takes the schedule’s output and returns an effect that produces a
delay duration.

To import and use `addDelayEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.addDelayEffect
```

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
