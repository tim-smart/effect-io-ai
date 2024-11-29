# fromDelays

A schedule that recurs once for each of the specified durations, delaying
each time for the length of the specified duration. Returns the length of
the current duration between recurrences.

To import and use `fromDelays` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.fromDelays
undefined

**Signature**

```ts
export declare const fromDelays: (
  delay: Duration.DurationInput,
  ...delays: Array<Duration.DurationInput>
) => Schedule<Duration.Duration>
```
