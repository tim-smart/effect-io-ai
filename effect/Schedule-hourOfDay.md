# hourOfDay

Cron-like schedule that recurs every specified `hour` of each day. It
triggers at zero minute of the hour. Producing a count of repeats: 0, 1, 2.

NOTE: `hour` parameter is validated lazily. Must be in range 0...23.

To import and use `hourOfDay` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.hourOfDay
```

**Signature**

```ts
export declare const hourOfDay: (hour: number) => Schedule<never, unknown, number>
```
