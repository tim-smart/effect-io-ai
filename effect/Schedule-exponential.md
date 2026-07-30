Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.exponential

Creates a schedule that recurs indefinitely with exponentially increasing
delays.

**Details**

This schedule starts with an initial delay of `base` and increases the delay
exponentially on each repetition using the formula `base * factor^n`, where
`n` is the number of times the schedule has executed so far. If no `factor`
is provided, it defaults to `2`, causing the delay to double after each
execution.

**Signature**

```ts
declare const exponential: (base: Duration.DurationInput, factor?: number) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1003)

Since v2.0.0