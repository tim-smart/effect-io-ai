# cron

Cron schedule that recurs every `minute` that matches the schedule.

It triggers at zero second of the minute. Producing the timestamps of the cron window.

NOTE: `expression` parameter is validated lazily. Must be a valid cron expression.

To import and use `cron` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.cron
undefined

**Signature**

```ts
export declare const cron: (expression: string | Cron.Cron) => Schedule<[number, number]>
```
