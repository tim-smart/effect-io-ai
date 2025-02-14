# delayed

Modifies a schedule by adding a computed delay before each execution.

**Details**

This function adjusts an existing schedule by applying a transformation to
its delays. Instead of using the default interval, each delay is modified
using the provided function `f`, which takes the current delay and returns a
new delay.

This is useful for dynamically adjusting wait times between executions, such
as introducing jitter, exponential backoff, or custom delay logic.

To import and use `delayed` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delayed
```

**Signature**

```ts
export declare const delayed: {
  (
    f: (duration: Duration.Duration) => Duration.DurationInput
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(
    self: Schedule<Out, In, R>,
    f: (duration: Duration.Duration) => Duration.DurationInput
  ): Schedule<Out, In, R>
}
```
