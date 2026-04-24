Package: `effect`<br />
Module: `Effect`<br />

## Effect.trackSuccesses

Updates the provided `Metric` every time the wrapped `Effect` succeeds with
a value.

Also accepts an optional function which can be used to map the success value
of the `Effect` into a valid `Input` for the `Metric`.

**Example**

```ts
import { Effect, Metric } from "effect"

const successCounter = Metric.counter("successes").pipe(
  Metric.withConstantInput(1)
)

const program = Effect.succeed(42).pipe(
  Effect.trackSuccesses(successCounter)
)

Effect.runPromise(program).then(() =>
  Effect.runPromise(Metric.value(successCounter)).then(console.log)
  // Output: { count: 1, incremental: false }
)
```

**Example**

```ts
import { Effect, Metric } from "effect"

// Track successful request sizes
const requestSizeGauge = Metric.gauge("request_size_bytes")

const program = Effect.succeed("Hello World!").pipe(
  Effect.trackSuccesses(requestSizeGauge, (value: string) => value.length)
)

Effect.runPromise(program).then(() =>
  Effect.runPromise(Metric.value(requestSizeGauge)).then(console.log)
  // Output: { value: 12 }
)
```

**Signature**

```ts
declare const trackSuccesses: { <Input, State, A>(metric: Metric.Metric<Input, State>, f: (value: A) => Input): <E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <State, A>(metric: Metric.Metric<NoInfer<A>, State>): <E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R, Input, State>(self: Effect<A, E, R>, metric: Metric.Metric<Input, State>, f: (value: A) => Input): Effect<A, E, R>; <A, E, R, State>(self: Effect<A, E, R>, metric: Metric.Metric<NoInfer<A>, State>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13486)

Since v4.0.0