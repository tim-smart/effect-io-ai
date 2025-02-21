# dayOfMonth

Creates a schedule that recurs on a specific day of the month.

**Details**

This schedule triggers at midnight on the specified day of each month. It
will not execute in months that have fewer days than the given day. For
example, if the schedule is set to run on the 31st, it will not execute in
months with only 30 days.

The schedule produces a count of executions, starting at 0 and incrementing
with each recurrence.

The `day` parameter is validated lazily, meaning errors may only be detected
when the schedule is executed.

To import and use `dayOfMonth` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.dayOfMonth
```

**Signature**

```ts
export declare const dayOfMonth: (day: number) => Schedule<number>
```
