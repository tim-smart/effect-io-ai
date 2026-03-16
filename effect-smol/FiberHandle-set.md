Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.set

Set the fiber in the `FiberHandle`. When the fiber completes, it will be
removed from the `FiberHandle`.

If a fiber already exists in the `FiberHandle`, it will be interrupted
unless `options.onlyIfMissing` is set.

**Example**

```ts
import { Effect, Fiber, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()
  const fiber = Effect.runFork(Effect.succeed("hello"))

  // Set the fiber safely
  yield* FiberHandle.set(handle, fiber)

  // The fiber is now managed by the handle
  const result = yield* Fiber.await(fiber)
  console.log(result) // "hello"
})
```

**Signature**

```ts
declare const set: { <A, E, XE extends E, XA extends A>(fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; }): (self: FiberHandle<A, E>) => Effect.Effect<void>; <A, E, XE extends E, XA extends A>(self: FiberHandle<A, E>, fiber: Fiber.Fiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; }): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L326)

Since v2.0.0