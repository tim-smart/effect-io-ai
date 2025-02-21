# count

A schedule that recurs indefinitely, counting the number of recurrences.

**Details**

This schedule never stops and simply counts how many times it has executed.
Each recurrence increases the count, starting from `0`.

This is useful when tracking the number of attempts in retry policies,
measuring execution loops, or implementing infinite polling scenarios.

To import and use `count` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.count
```

**Signature**

```ts
export declare const count: Schedule<number, unknown, never>
```
