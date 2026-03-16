Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.getUnsafe

Retrieve a fiber from the FiberMap.

**Example**

```ts
import { Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add a fiber to the map
  const fiber = yield* Effect.forkChild(Effect.succeed("Hello"))
  FiberMap.setUnsafe(map, "greeting", fiber)

  // Retrieve the fiber
  const retrieved = FiberMap.getUnsafe(map, "greeting")
  if (retrieved._tag === "Some") {
    const result = yield* Fiber.await(retrieved.value)
    console.log(result) // "Hello"
  }
})
```

**Signature**

```ts
declare const getUnsafe: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Option.Option<Fiber.Fiber<A, E>>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Option.Option<Fiber.Fiber<A, E>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L415)

Since v2.0.0