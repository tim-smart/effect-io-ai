# linear

A schedule that always recurs, but will repeat on a linear time interval,
given by `base * n` where `n` is the number of repetitions so far. Returns
the current duration between recurrences.

To import and use `linear` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.linear
```

**Signature**

```ts
export declare const linear: (base: Duration.DurationInput) => Schedule<never, unknown, Duration.Duration>
```
