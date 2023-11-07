# fixed

A schedule that recurs on a fixed interval. Returns the number of
repetitions of the schedule so far.

If the action run between updates takes longer than the interval, then the
action will be run immediately, but re-runs will not "pile up".

```
|-----interval-----|-----interval-----|-----interval-----|
|---------action--------||action|-----|action|-----------|
```

To import and use `fixed` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.fixed
```

**Signature**

```ts
export declare const fixed: (interval: Duration.DurationInput) => Schedule<never, unknown, number>
```
