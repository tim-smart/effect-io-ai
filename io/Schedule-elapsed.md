# elapsed

A schedule that occurs everywhere, which returns the total elapsed duration
since the first step.

To import and use `elapsed` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.elapsed
```

**Signature**

```ts
export declare const elapsed: (_: void) => Schedule<never, unknown, Duration.Duration>
```