# modifyDelay

Returns a new schedule that modifies the delay between executions using a
custom function.

**Details**

This function transforms an existing schedule by applying `f` to modify the
delay before each execution. The function receives both the schedule's output
(`out`) and the originally computed delay (`duration`), and returns a new
adjusted delay.

To import and use `modifyDelay` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.modifyDelay
```

**Signature**

```ts
export declare const modifyDelay: {
  <Out>(
    f: (out: Out, duration: Duration.Duration) => Duration.DurationInput
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(
    self: Schedule<Out, In, R>,
    f: (out: Out, duration: Duration.Duration) => Duration.DurationInput
  ): Schedule<Out, In, R>
}
```
