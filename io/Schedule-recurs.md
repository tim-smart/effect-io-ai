# recurs

A schedule spanning all time, which can be stepped only the specified
number of times before it terminates.

To import and use `recurs` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.recurs
```

**Signature**

```ts
export declare const recurs: (n: number) => Schedule<never, unknown, number>
```
