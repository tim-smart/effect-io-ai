Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.run

Run an Effect and add the forked fiber to the FiberHandle.
When the fiber completes, it will be removed from the FiberHandle.

**Example**

```ts
import { Effect, Fiber, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()

  // Run an effect and get the fiber
  const fiber = yield* FiberHandle.run(handle, Effect.succeed("hello"))
  const result = yield* Fiber.await(fiber)
  console.log(result) // "hello"

  // Running another effect will interrupt the previous one
  const fiber2 = yield* FiberHandle.run(handle, Effect.succeed("world"))
  const result2 = yield* Fiber.await(fiber2)
  console.log(result2) // "world"
})
```

**Signature**

```ts
declare const run: { <A, E>(self: FiberHandle<A, E>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; readonly startImmediately?: boolean | undefined; }): <R, XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>) => Effect.Effect<Fiber.Fiber<XA, XE>, never, R>; <A, E, R, XE extends E, XA extends A>(self: FiberHandle<A, E>, effect: Effect.Effect<XA, XE, R>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; readonly startImmediately?: boolean | undefined; }): Effect.Effect<Fiber.Fiber<XA, XE>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L487)

Since v2.0.0