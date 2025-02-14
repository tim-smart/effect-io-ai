# modifyDelayEffect

Returns a new schedule that modifies the delay before execution using an
effectful function.

**Details**

This function takes an existing schedule and applies an effectful function
`f` to dynamically adjust the delay before each execution. The function
receives both the schedule's output (`out`) and the originally computed delay
(`duration`), returning a new adjusted delay wrapped in an `Effect`.

To import and use `modifyDelayEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.modifyDelayEffect
```

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
