# dayOfWeek

Cron-like schedule that recurs every specified `day` of each week. It
triggers at zero hour of the week. Producing a count of repeats: 0, 1, 2.

NOTE: `day` parameter is validated lazily. Must be in range 1 (Monday)...7
(Sunday).

To import and use `dayOfWeek` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.dayOfWeek
undefined

**Signature**

```ts
export declare const dayOfWeek: (day: number) => Schedule<number>
```
