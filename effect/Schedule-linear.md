# linear

Creates a schedule that recurs indefinitely, increasing the delay linearly.

**Details**

This schedule starts with an initial delay of `base` and increases the delay
on each recurrence in a linear fashion, following the formula:

`delay = base * n`

where `n` is the number of times the schedule has executed so far. This
results in increasing intervals between executions.

This is useful for implementing linear backoff strategies where the wait time
between retries increases at a steady rate.

To import and use `linear` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.linear
```

**Signature**

```ts
export declare const linear: (base: Duration.DurationInput) => Schedule<Duration.Duration>
```
