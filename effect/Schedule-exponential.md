# exponential

Creates a schedule that recurs indefinitely with exponentially increasing
delays.

**Details**

This schedule starts with an initial delay of `base` and increases the delay
exponentially on each repetition using the formula `base * factor^n`, where
`n` is the number of times the schedule has executed so far. If no `factor`
is provided, it defaults to `2`, causing the delay to double after each
execution.

To import and use `exponential` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.exponential
```

**Signature**

```ts
export declare const exponential: (base: Duration.DurationInput, factor?: number) => Schedule<Duration.Duration>
```
