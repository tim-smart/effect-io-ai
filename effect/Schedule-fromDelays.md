Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fromDelays

Creates a schedule that recurs once for each specified duration, applying the
given delays sequentially.

**Details**

This schedule executes multiple times, each time waiting for the
corresponding duration from the provided list of delays. The first execution
waits for `delay`, the next for the second value in `delays`, and so on. Once
all delays have been used, the schedule stops executing.

This is useful for defining a custom delay sequence that does not follow a
fixed pattern like exponential or Fibonacci backoff.

**Signature**

```ts
declare const fromDelays: (delay: Duration.DurationInput, ...delays: Array<Duration.DurationInput>) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1096)

Since v2.0.0