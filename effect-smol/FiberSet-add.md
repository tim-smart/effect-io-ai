Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.add

Add a fiber to the FiberSet. When the fiber completes, it will be removed.

**Example**

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make()
  const fiber = yield* Effect.forkChild(Effect.succeed("hello"))

  // Add the fiber to the set
  yield* FiberSet.add(set, fiber)

  // The fiber is now managed by the set
  console.log(yield* FiberSet.size(set)) // 1
})
```

**Signature**

```ts
declare const add: { <A, E, XE extends E, XA extends A>(fiber: Fiber.Fiber<XA, XE>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): (self: FiberSet<A, E>) => Effect.Effect<void>; <A, E, XE extends E, XA extends A>(self: FiberSet<A, E>, fiber: Fiber.Fiber<XA, XE>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L316)

Since v2.0.0