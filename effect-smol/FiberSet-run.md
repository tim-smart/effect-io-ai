Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.run

Fork an Effect and add the forked fiber to the FiberSet.
When the fiber completes, it will be removed from the FiberSet.

**Example**

```ts
import { Effect, Fiber, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make()

  // Fork and add to set
  const fiber1 = yield* FiberSet.run(set, Effect.succeed("hello"))
  const fiber2 = yield* FiberSet.run(set, Effect.succeed("world"))

  // Get results
  const result1 = yield* Fiber.await(fiber1)
  const result2 = yield* Fiber.await(fiber2)

  console.log(result1, result2) // "hello" "world"
})
```

**Signature**

```ts
declare const run: { <A, E>(self: FiberSet<A, E>, options?: { readonly propagateInterruption?: boolean | undefined; readonly startImmediately?: boolean | undefined; } | undefined): <R, XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>) => Effect.Effect<Fiber.Fiber<XA, XE>, never, R>; <A, E, R, XE extends E, XA extends A>(self: FiberSet<A, E>, effect: Effect.Effect<XA, XE, R>, options?: { readonly propagateInterruption?: boolean | undefined; readonly startImmediately?: boolean | undefined; } | undefined): Effect.Effect<Fiber.Fiber<XA, XE>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L411)

Since v2.0.0