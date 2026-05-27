Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.Deferred

A `Deferred` represents an asynchronous variable that can be set exactly
once, with the ability for an arbitrary number of fibers to suspend (by
calling `Deferred.await`) and automatically resume when the variable is set.

**When to use**

Use to coordinate multiple fibers around a value or failure that will be
supplied exactly once.

**Example** (Creating a Deferred for inter-fiber communication)

```ts
import { Deferred, Effect, Fiber } from "effect"

// Create and use a Deferred for inter-fiber communication
const program = Effect.gen(function*() {
  // Create a Deferred that will hold a string value
  const deferred: Deferred.Deferred<string> = yield* Deferred.make<string>()

  // Fork a fiber that will set the deferred value
  const producer = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("100 millis")
      yield* Deferred.succeed(deferred, "Hello, World!")
    })
  )

  // Fork a fiber that will await the deferred value
  const consumer = yield* Effect.forkChild(
    Effect.gen(function*() {
      const value = yield* Deferred.await(deferred)
      console.log("Received:", value)
      return value
    })
  )

  // Wait for both fibers to complete
  yield* Fiber.join(producer)
  const result = yield* Fiber.join(consumer)
  return result
})
```

**Signature**

```ts
export interface Deferred<in out A, in out E = never> extends Deferred.Variance<A, E>, Pipeable {
  effect?: Effect<A, E>
  resumes?: Array<(effect: Effect<A, E>) => void> | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L124)

Since v2.0.0