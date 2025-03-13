Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.linear

Creates a schedule that recurs indefinitely, increasing the delay linearly.

**Details**

This schedule starts with an initial delay of `base` and increases the delay
on each recurrence in a linear fashion, following the formula:

`delay = base * n`

where `n` is the number of times the schedule has executed so far. This
results in increasing intervals between executions.

This is useful for implementing linear backoff strategies where the wait time
between retries increases at a steady rate.

**Signature**

```ts
declare const linear: (base: Duration.DurationInput) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1282)

Since v2.0.0