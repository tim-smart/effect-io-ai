# dayOfWeek

Creates a schedule that recurs on a specific day of the week.

**Details**

This schedule triggers at midnight on the specified day of the week. The
`day` parameter follows the standard convention where `Monday = 1` and
`Sunday = 7`. The schedule produces a count of executions, starting at 0 and
incrementing with each recurrence.

The `day` parameter is validated lazily, meaning errors may only be detected
when the schedule is executed.

To import and use `dayOfWeek` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.dayOfWeek
```

**Signature**

```ts
export declare const dayOfWeek: (day: number) => Schedule<number>
```
