# secondOfMinute

Cron-like schedule that recurs every specified `second` of each minute. It
triggers at zero nanosecond of the second. Producing a count of repeats: 0,
1, 2.

NOTE: `second` parameter is validated lazily. Must be in range 0...59.

To import and use `secondOfMinute` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.secondOfMinute
```

**Signature**

```ts
export declare const secondOfMinute: (second: number) => Schedule<never, unknown, number>
```
