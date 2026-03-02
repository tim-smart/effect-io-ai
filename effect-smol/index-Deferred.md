Package: `effect`<br />
Module: `index`<br />

## index.Deferred

Re-exports all named exports from the "./Deferred.ts" module as `Deferred`.

**Example**

```ts
import { Deferred, Effect, Fiber } from "effect"

// Basic usage: coordinate between fibers
const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<string, never>()

  // Fiber 1: waits for the value
  const waiter = yield* Effect.forkChild(
    Effect.gen(function*() {
      const value = yield* Deferred.await(deferred)
      console.log("Received:", value)
      return value
    })
  )

  // Fiber 2: sets the value after a delay
  const setter = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("1 second")
      yield* Deferred.succeed(deferred, "Hello from setter!")
    })
  )

  // Wait for both fibers
  yield* Fiber.join(waiter)
  yield* Fiber.join(setter)
})

// Producer-consumer pattern
const producerConsumer = Effect.gen(function*() {
  const buffer = yield* Deferred.make<Array<number>, never>()

  const producer = Effect.gen(function*() {
    const data = [1, 2, 3, 4, 5]
    yield* Deferred.succeed(buffer, data)
  })

  const consumer = Effect.gen(function*() {
    const data = yield* Deferred.await(buffer)
    return data.reduce((sum, n) => sum + n, 0)
  })

  const [, result] = yield* Effect.all([producer, consumer])
  return result // 15
})
```

**Signature**

```ts
export * as Deferred from "./Deferred.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L893)

Since v2.0.0