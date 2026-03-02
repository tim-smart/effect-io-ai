Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.addUnsafe

Add a fiber to the FiberSet. When the fiber completes, it will be removed.
This is the unsafe version that doesn't return an Effect.

**Example**

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make()
  const fiber = yield* Effect.forkChild(Effect.succeed("hello"))

  // Unsafe add - doesn't return an Effect
  FiberSet.addUnsafe(set, fiber)

  // The fiber is now managed by the set
  console.log(yield* FiberSet.size(set)) // 1
})
```

**Signature**

```ts
declare const addUnsafe: { <A, E, XE extends E, XA extends A>(fiber: Fiber.Fiber<XA, XE>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): (self: FiberSet<A, E>) => void; <A, E, XE extends E, XA extends A>(self: FiberSet<A, E>, fiber: Fiber.Fiber<XA, XE>, options?: { readonly propagateInterruption?: boolean | undefined; } | undefined): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L248)

Since v2.0.0