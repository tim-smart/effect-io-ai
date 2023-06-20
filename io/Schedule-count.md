# count

A schedule that always recurs, which counts the number of recurrences.

To import and use `count` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.count
```

**Signature**

```ts
export declare const count: (_: void) => Schedule<never, unknown, number>
```
