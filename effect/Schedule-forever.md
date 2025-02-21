# forever

Creates a schedule that recurs indefinitely, producing a count of
repetitions.

**Details**

This schedule runs indefinitely, returning an increasing count of executions
(`0, 1, 2, 3, ...`). Each step increments the count by one, allowing tracking
of how many times it has executed.

To import and use `forever` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.forever
```

**Signature**

```ts
export declare const forever: Schedule<number, unknown, never>
```
