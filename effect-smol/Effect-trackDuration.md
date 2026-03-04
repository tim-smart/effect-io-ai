Package: `effect`<br />
Module: `Effect`<br />

## Effect.trackDuration

Updates the provided `Metric` with the `Duration` of time (in nanoseconds)
that the wrapped `Effect` took to complete.

Also accepts an optional function which can be used to map the `Duration`
that the wrapped `Effect` took to complete into a valid `Input` for the
`Metric`.

**Example**

```ts
import { Effect, Metric } from "effect"

const executionTimer = Metric.timer("execution_time")

const program = Effect.sleep("100 millis").pipe(
  Effect.trackDuration(executionTimer)
)

Effect.runPromise(program).then(() =>
  Effect.runPromise(Metric.value(executionTimer)).then(console.log)
  // Output: { count: 1, min: 100000000, max: 100000000, sum: 100000000 }
)
```

**Example**

```ts
import { Duration, Effect, Metric } from "effect"

// Track execution time in milliseconds using custom mapping
const durationGauge = Metric.gauge("execution_millis")

const program = Effect.sleep("200 millis").pipe(
  Effect.trackDuration(durationGauge, (duration) => Duration.toMillis(duration))
)

Effect.runPromise(program).then(() =>
  Effect.runPromise(Metric.value(durationGauge)).then(console.log)
  // Output: { value: 200 }
)
```

**Signature**

```ts
declare const trackDuration: { <Input, State>(metric: Metric.Metric<Input, State>, f: (duration: Duration.Duration) => Input): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <State, E>(metric: Metric.Metric<Duration.Duration, State>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R, Input, State>(self: Effect<A, E, R>, metric: Metric.Metric<Input, State>, f: (duration: Duration.Duration) => Input): Effect<A, E, R>; <A, E, R, State>(self: Effect<A, E, R>, metric: Metric.Metric<Duration.Duration, State>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13665)

Since v4.0.0