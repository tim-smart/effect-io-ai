# delayedSchedule

Uses the delays produced by a schedule to further delay its intervals.

**Details**

This function modifies a schedule by using its own output delays to control
its execution timing. Instead of executing immediately at each interval, the
schedule will be delayed by the duration it produces.

To import and use `delayedSchedule` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delayedSchedule
```

**Signature**

```ts
export declare const delayedSchedule: <In, R>(
  schedule: Schedule<Duration.Duration, In, R>
) => Schedule<Duration.Duration, In, R>
```
