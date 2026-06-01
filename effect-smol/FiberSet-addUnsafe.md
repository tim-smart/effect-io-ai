Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.addUnsafe

Adds an existing fiber to the `FiberSet` using a synchronous, unsafe
mutation.

**When to use**

Use when an already forked fiber must be registered immediately and
synchronous interruption on a closed set is acceptable.

**Details**

When the fiber completes, it is removed from the set. If the set is already
closed, the supplied fiber is interrupted immediately. Non-interruption
failures are recorded for `FiberSet.join`.

**Example** (Adding a fiber unsafely)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L323)

Since v4.0.0