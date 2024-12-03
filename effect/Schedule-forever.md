# forever

A schedule that always recurs, producing a count of repeats: 0, 1, 2.

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
