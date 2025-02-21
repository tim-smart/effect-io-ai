# minuteOfHour

Creates a schedule that recurs every specified minute of each hour.

**Details**

This schedule triggers once per hour at the specified `minute`, starting
exactly at `minute:00` (zero seconds). The schedule produces a count of
executions (`0, 1, 2, ...`), representing how many times it has run.

The `minute` parameter must be between `0` and `59`. It is validated lazily,
meaning an invalid value will cause errors only when the schedule is
executed.

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
