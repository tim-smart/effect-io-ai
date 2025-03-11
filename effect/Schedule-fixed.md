## fixed

Creates a schedule that recurs at a fixed interval.

**Details**

This schedule executes at regular, evenly spaced intervals, returning the
number of times it has run so far. If the action being executed takes longer
than the interval, the next execution will happen immediately to prevent
"pile-ups," ensuring that the schedule remains consistent without overlapping
executions.

```text
|-----interval-----|-----interval-----|-----interval-----|
|---------action--------||action|-----|action|-----------|
```

**See**

- `spaced` If you need to run from the end of the last execution.

**Signature**

```ts
declare const fixed: (interval: Duration.DurationInput) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1047)

Since v2.0.0