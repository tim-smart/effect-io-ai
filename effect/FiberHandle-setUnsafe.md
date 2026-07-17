Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.setUnsafe

Sets the fiber in a FiberHandle. When the fiber completes, it will be removed from the FiberHandle.
If a fiber is already running, it will be interrupted unless `options.onlyIfMissing` is set.

**When to use**

Use when an existing forked fiber must be installed synchronously into a
handle and immediate interruption of replaced or closed fibers is acceptable.

**Example** (Setting a fiber unsafely)

```ts
import { Effect, Fiber, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()
  const fiber = Effect.runFork(Effect.succeed("hello"))

  // Set the fiber directly (unsafe)
  FiberHandle.setUnsafe(handle, fiber)

  // The fiber is now managed by the handle
  const result = yield* Fiber.await(fiber)
  console.log(result) // "hello"
})
```

**Signature**

```ts
declare const setUnsafe: { <A, E, XE extends E, XA extends A>(fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }): (self: FiberHandle<A, E>) => void; <A, E, XE extends E, XA extends A>(self: FiberHandle<A, E>, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L291)

Since v4.0.0