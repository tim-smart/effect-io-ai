# dayOfMonth

Cron-like schedule that recurs every specified `day` of month. Won't recur
on months containing less days than specified in `day` param.

It triggers at zero hour of the day. Producing a count of repeats: 0, 1, 2.

NOTE: `day` parameter is validated lazily. Must be in range 1...31.

To import and use `dayOfMonth` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.dayOfMonth
```

**Signature**

```ts
export declare const dayOfMonth: (day: number) => Schedule<never, unknown, number>
```
