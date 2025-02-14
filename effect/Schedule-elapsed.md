# elapsed

Creates a schedule that tracks the total elapsed duration since it started.

**Details**

This schedule executes continuously and returns the total time that has
passed since the first execution. The duration keeps increasing with each
step, providing a way to measure elapsed time.

This is useful for tracking execution time, monitoring delays, or
implementing logic based on how long a process has been running.

To import and use `elapsed` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.elapsed
```

**Signature**

```ts
export declare const elapsed: Schedule<Duration.Duration, unknown, never>
```
