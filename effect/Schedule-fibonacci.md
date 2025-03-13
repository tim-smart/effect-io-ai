Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fibonacci

Creates a schedule that recurs indefinitely with Fibonacci-based increasing
delays.

**Details**

This schedule starts with an initial delay of `one` and increases subsequent
delays by summing the two previous delays, following the Fibonacci sequence.
The delay pattern follows: `one, one, one + one, (one + one) + one, ...`,
resulting in `1s, 1s, 2s, 3s, 5s, 8s, 13s, ...` if `one = 1s`.

This is useful for progressive backoff strategies, where delays grow
naturally over time without increasing as aggressively as an exponential
schedule.

**Signature**

```ts
declare const fibonacci: (one: Duration.DurationInput) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1024)

Since v2.0.0