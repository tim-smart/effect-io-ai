Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.set

Add a fiber to the FiberMap. When the fiber completes, it will be removed from the FiberMap.
If the key already exists in the FiberMap, the previous fiber will be interrupted.
This is the Effect-wrapped version of `setUnsafe`.

**Example**

```ts
import { Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Create a fiber and add it to the map using Effect
  const fiber = yield* Effect.forkChild(Effect.succeed("Hello"))
  yield* FiberMap.set(map, "greeting", fiber)

  // The fiber will be automatically removed when it completes
  const result = yield* Fiber.await(fiber)
  console.log(result) // "Hello"
})
```

**Signature**

```ts
declare const set: { <K, A, E, XE extends E, XA extends A>(key: K, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): (self: FiberMap<K, A, E>) => Effect.Effect<void>; <K, A, E, XE extends E, XA extends A>(self: FiberMap<K, A, E>, key: K, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L361)

Since v2.0.0