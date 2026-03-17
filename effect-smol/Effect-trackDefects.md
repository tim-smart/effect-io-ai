Package: `effect`<br />
Module: `Effect`<br />

## Effect.trackDefects

Updates the provided `Metric` every time the wrapped `Effect` fails with an
**unexpected** error (i.e. a defect).

Also accepts an optional function which can be used to map the defect value
of the `Effect` into a valid `Input` for the `Metric`.

**Example**

```ts
import { Effect, Metric } from "effect"

const defectCounter = Metric.counter("defects").pipe(
  Metric.withConstantInput(1)
)

const program = Effect.die("Critical system failure").pipe(
  Effect.trackDefects(defectCounter)
)

Effect.runPromiseExit(program).then(() =>
  Effect.runPromise(Metric.value(defectCounter)).then(console.log)
  // Output: { count: 1, incremental: false }
)
```

**Example**

```ts
import { Effect, Metric } from "effect"

// Track defect types using frequency metric
const defectTypeFrequency = Metric.frequency("defect_types")

const program = Effect.die(new Error("Null pointer exception")).pipe(
  Effect.trackDefects(defectTypeFrequency, (defect: unknown) => {
    if (defect instanceof Error) return defect.constructor.name
    return typeof defect
  })
)

Effect.runPromiseExit(program).then(() =>
  Effect.runPromise(Metric.value(defectTypeFrequency)).then(console.log)
  // Output: { occurrences: Map(1) { "Error" => 1 } }
)
```

**Signature**

```ts
declare const trackDefects: { <Input, State>(metric: Metric.Metric<Input, State>, f: (defect: unknown) => Input): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <State, E>(metric: Metric.Metric<unknown, State>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R, Input, State>(self: Effect<A, E, R>, metric: Metric.Metric<Input, State>, f: (defect: unknown) => Input): Effect<A, E, R>; <A, E, R, State>(self: Effect<A, E, R>, metric: Metric.Metric<unknown, State>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13644)

Since v4.0.0