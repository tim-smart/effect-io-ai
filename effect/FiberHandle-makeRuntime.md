Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.makeRuntime

Creates a scoped run function that forks effects into a new `FiberHandle`.

**Details**

Each call returns the forked fiber, stores it in the handle, and interrupts
the previous fiber unless `onlyIfMissing` is set. The managed fiber is
interrupted when the handle's scope closes.

**Example** (Running effects with a fiber handle)

```ts
import { Effect, Fiber, FiberHandle } from "effect"

Effect.gen(function*() {
  const run = yield* FiberHandle.makeRuntime<never>()

  // Run effects and get fibers back
  const fiberA = run(Effect.succeed("first"))
  const fiberB = run(Effect.succeed("second"))

  // The second fiber will interrupt the first
  const resultA = yield* Fiber.await(fiberA)
  const resultB = yield* Fiber.await(fiberB)
}).pipe(Effect.scoped)
```

**Signature**

```ts
declare const makeRuntime: <R, E = unknown, A = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: Scheduler | undefined; readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined) => Fiber.Fiber<XA, XE>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L184)

Since v2.0.0