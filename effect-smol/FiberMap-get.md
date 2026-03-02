Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.get

Retrieve a fiber from the FiberMap.

Returns an Effect that fails with `NoSuchElementError` if the key is not found.

**Example**

```ts
import { Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add a fiber to the map
  const fiber = yield* Effect.forkChild(Effect.succeed("Hello"))
  yield* FiberMap.set(map, "greeting", fiber)

  // Retrieve the fiber with error handling
  const retrieved = yield* FiberMap.get(map, "greeting")
  if (retrieved) {
    const result = yield* Fiber.await(retrieved)
    console.log(result) // "Hello"
  }
})
```

**Signature**

```ts
declare const get: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<Fiber.Fiber<A, E> | undefined>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<Fiber.Fiber<A, E> | undefined>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L453)

Since v2.0.0