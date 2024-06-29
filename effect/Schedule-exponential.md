# exponential

A schedule that always recurs, but will wait a certain amount between
repetitions, given by `base * factor.pow(n)`, where `n` is the number of
repetitions so far. Returns the current duration between recurrences.

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
