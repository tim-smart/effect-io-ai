Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.run

Forks an Effect and stores the resulting fiber in the `FiberMap` under a key.

**Details**

When the fiber completes, it is removed from the map. If the key already has
a fiber, the previous fiber is interrupted unless `onlyIfMissing` is set.

**Example** (Forking effects into a map)

```ts
import { Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Run effects and add the fibers to the map
  const fiber1 = yield* FiberMap.run(map, "task1", Effect.succeed("Hello"))
  const fiber2 = yield* FiberMap.run(map, "task2", Effect.succeed("World"))

  // Join the fibers to get their successful values
  const result1 = yield* Fiber.join(fiber1)
  const result2 = yield* Fiber.join(fiber2)

  console.log(result1, result2) // "Hello", "World"
  console.log(yield* FiberMap.size(map)) // 0 (fibers are removed after completion)
})
```

**Signature**

```ts
declare const run: { <K, A, E>(self: FiberMap<K, A, E>, key: K, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; readonly startImmediately?: boolean | undefined; } | undefined): <R, XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>) => Effect.Effect<Fiber.Fiber<XA, XE>, never, R>; <K, A, E, R, XE extends E, XA extends A>(self: FiberMap<K, A, E>, key: K, effect: Effect.Effect<XA, XE, R>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; readonly startImmediately?: boolean | undefined; } | undefined): Effect.Effect<Fiber.Fiber<XA, XE>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L738)

Since v2.0.0