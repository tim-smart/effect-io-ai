# minuteOfHour

Cron-like schedule that recurs every specified `minute` of each hour. It
triggers at zero second of the minute. Producing a count of repeats: 0, 1, 2.

NOTE: `minute` parameter is validated lazily. Must be in range 0...59.

To import and use `minuteOfHour` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.minuteOfHour
```

**Signature**

```ts
export declare const minuteOfHour: (minute: number) => Schedule<number>
```
