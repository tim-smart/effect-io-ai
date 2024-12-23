# cron

Cron schedule that recurs every interval that matches the schedule.

It triggers at the beginning of each cron interval, producing the timestamps of the cron window.

NOTE: `expression` parameter is validated lazily. Must be a valid cron expression.

To import and use `cron` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.cron
```

**Signature**

```ts
export declare const cron: {
  (cron: Cron.Cron): Schedule<[number, number]>
  (expression: string, tz?: DateTime.TimeZone | string): Schedule<[number, number]>
}
```
