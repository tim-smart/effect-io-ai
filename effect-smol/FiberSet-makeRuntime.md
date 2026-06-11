Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.makeRuntime

Creates a scoped run function that forks effects into a new `FiberSet`.

**Details**

Each call returns the forked fiber and adds it to the set. Managed fibers are
removed when they complete and are interrupted when the set's scope closes.

**Example** (Creating a scoped runtime)

```ts
import { Effect, Fiber, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const runFork = yield* FiberSet.makeRuntime()

  // Fork effects using the runtime
  const fiber1 = runFork(Effect.succeed("hello"))
  const fiber2 = runFork(Effect.succeed("world"))

  const result1 = yield* Fiber.await(fiber1)
  const result2 = yield* Fiber.await(fiber2)

  console.log(result1, result2) // "hello" "world"
})
```

**Signature**

```ts
declare const makeRuntime: <R = never, A = unknown, E = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly propagateInterruption?: boolean | undefined; }) | undefined) => Fiber.Fiber<XA, XE>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L189)

Since v2.0.0