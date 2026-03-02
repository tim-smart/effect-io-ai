Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.Hooks

Interface defining the core hooks for metric operations: get, update, and modify.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class HooksError extends Data.TaggedError("HooksError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create a counter metric
  const requestCounter = Metric.counter("requests_total", {
    description: "Total number of requests"
  })

  // The Hooks interface provides three core operations for metrics:
  // 1. get: retrieve current state
  // 2. update: add/set a value
  // 3. modify: transform the current state

  // These are low-level APIs. Most users should use high-level APIs:
  // - Metric.value() for getting state
  // - Metric.update() for updating values
  // - Metric.modify() for modifying values

  // Example using high-level APIs (recommended)
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(requestCounter, 5)
  const state = yield* Metric.value(requestCounter)

  return {
    currentCount: state.count, // 6
    isIncremental: state.incremental // false
  }
})
```

**Signature**

```ts
export interface Hooks<in Input, out State> {
    readonly get: (context: ServiceMap.ServiceMap<never>) => State
    readonly update: (input: Input, context: ServiceMap.ServiceMap<never>) => void
    readonly modify: (input: Input, context: ServiceMap.ServiceMap<never>) => void
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1459)

Since v2.0.0