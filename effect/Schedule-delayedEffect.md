# delayedEffect

Returns a new schedule with the specified effectfully computed delay added
before the start of each interval produced by this schedule.

To import and use `delayedEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delayedEffect
```

**Signature**

```ts
export declare const delayedEffect: {
  <R2>(
    f: (duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    f: (duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
