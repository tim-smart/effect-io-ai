Package: `effect`<br />
Module: `Layer`<br />

## Layer.fresh

Creates a fresh version of this layer that will not be shared.

**When to use**

Use when you need two parts of an application to receive separate instances
of a resource, such as two independent client sessions.

**Gotchas**

Do not use it just to work around confusing composition. By default, sharing
the same layer value is usually the desired behavior.

**Example** (Creating non-shared layer instances)

```ts
import { Context, Effect, Layer, Ref } from "effect"

class Counter extends Context.Service<Counter, {
  readonly id: number
}>()("Counter") {}

class Left extends Context.Service<Left, {
  readonly counterId: number
}>()("Left") {}

class Right extends Context.Service<Right, {
  readonly counterId: number
}>()("Right") {}

const leftLayer = Layer.effect(Left, Effect.gen(function*() {
  const counter = yield* Counter
  return { counterId: counter.id }
}))

const rightLayer = Layer.effect(Right, Effect.gen(function*() {
  const counter = yield* Counter
  return { counterId: counter.id }
}))

const showIds = Effect.gen(function*() {
  const left = yield* Left
  const right = yield* Right
  console.log(`same Counter: ${left.counterId === right.counterId}`)
})

const program = Effect.gen(function*() {
  const nextId = yield* Ref.make(0)

  const counterLayer = Layer.effect(Counter, Effect.gen(function*() {
    const id = yield* Ref.updateAndGet(nextId, (n) => n + 1)
    console.log("constructed Counter")
    return { id }
  }))

  const shared = Layer.merge(
    Layer.provide(leftLayer, counterLayer),
    Layer.provide(rightLayer, counterLayer)
  )

  yield* Effect.provide(showIds, shared)

  const freshCounterLayer = Layer.fresh(counterLayer)
  const fresh = Layer.merge(
    Layer.provide(leftLayer, freshCounterLayer),
    Layer.provide(rightLayer, freshCounterLayer)
  )

  yield* Effect.provide(showIds, fresh)
})

Effect.runPromise(program)
// constructed Counter
// same Counter: true
// constructed Counter
// constructed Counter
// same Counter: false
```

**Signature**

```ts
declare const fresh: <A, E, R>(self: Layer<A, E, R>) => Layer<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2132)

Since v2.0.0