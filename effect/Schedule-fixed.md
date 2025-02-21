# fixed

Creates a schedule that recurs at a fixed interval.

**Details**

This schedule executes at regular, evenly spaced intervals, returning the
number of times it has run so far. If the action being executed takes longer
than the interval, the next execution will happen immediately to prevent
"pile-ups," ensuring that the schedule remains consistent without overlapping
executions.

```
|-----interval-----|-----interval-----|-----interval-----|
|---------action--------||action|-----|action|-----------|
```

To import and use `fixed` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.fixed
```

**Signature**

```ts
export declare const fixed: (interval: Duration.DurationInput) => Schedule<number>
```
