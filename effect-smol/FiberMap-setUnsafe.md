Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.setUnsafe

Add a fiber to the FiberMap. When the fiber completes, it will be removed from the FiberMap.
If the key already exists in the FiberMap, the previous fiber will be interrupted.

**Example**

```ts
import { Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Create a fiber and add it to the map
  const fiber = yield* Effect.forkChild(Effect.succeed("Hello"))
  FiberMap.setUnsafe(map, "greeting", fiber)

  // The fiber will be automatically removed when it completes
  const result = yield* Fiber.await(fiber)
  console.log(result) // "Hello"
})
```

**Signature**

```ts
declare const setUnsafe: { <K, A, E, XE extends E, XA extends A>(key: K, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): (self: FiberMap<K, A, E>) => void; <K, A, E, XE extends E, XA extends A>(self: FiberMap<K, A, E>, key: K, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L271)

Since v2.0.0