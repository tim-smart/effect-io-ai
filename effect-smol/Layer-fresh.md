Package: `effect`<br />
Module: `Layer`<br />

## Layer.fresh

Creates a fresh version of this layer that will not be shared.

**Example**

```ts
import { Effect, Layer, Ref, ServiceMap } from "effect"

class Counter extends ServiceMap.Service<Counter, {
  readonly count: number
  readonly increment: () => Effect.Effect<number>
}>()("Counter") {}

// Layer that creates a counter with shared state
const counterLayer = Layer.effect(Counter)(Effect.gen(function*() {
  const ref = yield* Ref.make(0)
  return {
    count: 0,
    increment: Effect.fn("Counter.increment")(() =>
      Ref.update(ref, (n) => n + 1).pipe(
        Effect.flatMap(() => Ref.get(ref))
      )
    )
  }
}))

// By default, layers are shared - same instance used everywhere
const sharedProgram = Effect.gen(function*() {
  const counter1 = yield* Counter
  const counter2 = yield* Counter

  // Both counter1 and counter2 refer to the same instance
  console.log("Shared layer - same instance")
}).pipe(
  Effect.provide(counterLayer)
)

// Fresh layer creates a new instance each time
const freshProgram = Effect.gen(function*() {
  const counter1 = yield* Counter
  const counter2 = yield* Counter

  // counter1 and counter2 are different instances
  console.log("Fresh layer - different instances")
}).pipe(
  Effect.provide(Layer.fresh(counterLayer))
)
```

**Signature**

```ts
declare const fresh: <A, E, R>(self: Layer<A, E, R>) => Layer<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1629)

Since v2.0.0