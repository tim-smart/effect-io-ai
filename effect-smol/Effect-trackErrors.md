Package: `effect`<br />
Module: `Effect`<br />

## Effect.trackErrors

Updates the provided `Metric` every time the wrapped `Effect` fails with an
**expected** error.

Also accepts an optional function which can be used to map the error value
of the `Effect` into a valid `Input` for the `Metric`.

**Example**

```ts
import { Effect, Metric } from "effect"

const errorCounter = Metric.counter("errors").pipe(
  Metric.withConstantInput(1)
)

const program = Effect.fail("Network timeout").pipe(
  Effect.trackErrors(errorCounter)
)

Effect.runPromiseExit(program).then(() =>
  Effect.runPromise(Metric.value(errorCounter)).then(console.log)
  // Output: { count: 1, incremental: false }
)
```

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class ConnectionFailedError extends Data.TaggedError("ConnectionFailedError")<{}> {}

// Track error types using frequency metric
const errorTypeFrequency = Metric.frequency("error_types")

const program = Effect.fail(new ConnectionFailedError()).pipe(
  Effect.trackErrors(errorTypeFrequency, (error: ConnectionFailedError) => error._tag)
)

Effect.runPromiseExit(program).then(() =>
  Effect.runPromise(Metric.value(errorTypeFrequency)).then(console.log)
  // Output: { occurrences: Map(1) { "ConnectionFailedError" => 1 } }
)
```

**Signature**

```ts
declare const trackErrors: { <Input, State, E>(metric: Metric.Metric<Input, State>, f: (error: E) => Input): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <State, E>(metric: Metric.Metric<NoInfer<E>, State>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R, Input, State>(self: Effect<A, E, R>, metric: Metric.Metric<Input, State>, f: (error: E) => Input): Effect<A, E, R>; <A, E, R, State>(self: Effect<A, E, R>, metric: Metric.Metric<NoInfer<E>, State>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13552)

Since v4.0.0