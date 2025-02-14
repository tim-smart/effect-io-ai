# delayedEffect

Modifies a schedule by adding an effectfully computed delay before each
execution.

**Details**

This function adjusts an existing schedule by introducing a delay that is
computed via an effect. Instead of using a fixed delay, each interval is
dynamically adjusted based on an effectful function `f`, which takes the
current delay and returns a new delay wrapped in an `Effect`.

This is useful for adaptive scheduling where delays depend on external
factors, such as API calls, database queries, or dynamic system conditions.

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
