# fibonacci

A schedule that always recurs, increasing delays by summing the preceding
two delays (similar to the fibonacci sequence). Returns the current
duration between recurrences.

To import and use `fibonacci` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.fibonacci
undefined

**Signature**

```ts
export declare const fibonacci: (one: Duration.DurationInput) => Schedule<Duration.Duration>
```
