Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.makeRuntime

Creates a scoped run function that forks effects into a new `FiberMap`.

**Details**

Each call stores the forked fiber under the supplied key and returns that
fiber. If the key already has a fiber, the previous fiber is interrupted
unless `onlyIfMissing` is set. All managed fibers are interrupted when the
map's scope closes.

**Example** (Creating a scoped runtime)

```ts
import { Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const run = yield* FiberMap.makeRuntime<never, string>()

  // Run effects and get back fibers
  const fiber1 = run("task1", Effect.succeed("Hello"))
  const fiber2 = run("task2", Effect.succeed("World"))

  // Join the fibers to get their successful values
  const result1 = yield* Fiber.join(fiber1)
  const result2 = yield* Fiber.join(fiber2)

  console.log(result1, result2) // "Hello", "World"
})
```

**Signature**

```ts
declare const makeRuntime: <R, K, E = unknown, A = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(key: K, effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly onlyIfMissing?: boolean | undefined; }) | undefined) => Fiber.Fiber<XA, XE>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L207)

Since v2.0.0