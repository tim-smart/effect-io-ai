# secondOfMinute

Cron-like schedule that recurs at a specific second of each minute.

**Details**

This schedule triggers at the specified `second` of each minute,
starting at zero nanoseconds. It produces a count of executions
(0, 1, 2, ...). The `second` parameter is validated lazily, meaning
invalid values will only be caught at runtime.

To import and use `secondOfMinute` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.secondOfMinute
```

**Signature**

```ts
export declare const secondOfMinute: (second: number) => Schedule<number>
```
