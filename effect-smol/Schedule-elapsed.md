Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.elapsed

A schedule that always recurs and returns the total elapsed duration since the first recurrence.

This schedule never stops and outputs the cumulative time that has passed since the schedule
started executing. Useful for tracking execution time or implementing time-based logic.

**Signature**

```ts
declare const elapsed: Schedule<Duration.Duration, unknown, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1899)

Since v2.0.0