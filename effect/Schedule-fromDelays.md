# fromDelays

Creates a schedule that recurs once for each specified duration, applying the
given delays sequentially.

**Details**

This schedule executes multiple times, each time waiting for the
corresponding duration from the provided list of delays. The first execution
waits for `delay`, the next for the second value in `delays`, and so on. Once
all delays have been used, the schedule stops executing.

This is useful for defining a custom delay sequence that does not follow a
fixed pattern like exponential or Fibonacci backoff.

To import and use `fromDelays` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.fromDelays
```

**Signature**

```ts
export declare const fromDelays: (
  delay: Duration.DurationInput,
  ...delays: Array<Duration.DurationInput>
) => Schedule<Duration.Duration>
```
