Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.set

Adds a fiber to the `FiberMap` under a key.

When the fiber completes, it is removed from the map. If the key already has
a fiber, that previous fiber is interrupted unless `onlyIfMissing` is set;
in that case the new fiber is interrupted and the existing entry is kept.

This is the Effect-wrapped version of `setUnsafe`.

**Example** (Adding a fiber)

```ts
import { Deferred, Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()
  const deferred = yield* Deferred.make<string>()

  // Create a fiber and add it to the map using Effect
  const fiber = yield* Effect.forkChild(Deferred.await(deferred))
  yield* FiberMap.set(map, "greeting", fiber)

  yield* Deferred.succeed(deferred, "Hello")

  // Join the fiber to get its successful value
  const result = yield* Fiber.join(fiber)
  console.log(result) // "Hello"
})
```

**Signature**

```ts
declare const set: { <K, A, E, XE extends E, XA extends A>(key: K, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): (self: FiberMap<K, A, E>) => Effect.Effect<void>; <K, A, E, XE extends E, XA extends A>(self: FiberMap<K, A, E>, key: K, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L431)

Since v2.0.0