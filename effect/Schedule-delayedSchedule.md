# delayedSchedule

Takes a schedule that produces a delay, and returns a new schedule that
uses this delay to further delay intervals in the resulting schedule.

To import and use `delayedSchedule` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delayedSchedule
undefined

**Signature**

```ts
export declare const delayedSchedule: <In, R>(
  schedule: Schedule<Duration.Duration, In, R>
) => Schedule<Duration.Duration, In, R>
```
