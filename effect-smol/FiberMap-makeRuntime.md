Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.makeRuntime

Create an Effect run function that is backed by a FiberMap.

**Example**

```ts
import { Effect, Fiber, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const run = yield* FiberMap.makeRuntime<never, string>()

  // Run effects and get back fibers
  const fiber1 = run("task1", Effect.succeed("Hello"))
  const fiber2 = run("task2", Effect.succeed("World"))

  // Await the results
  const result1 = yield* Fiber.await(fiber1)
  const result2 = yield* Fiber.await(fiber2)

  console.log(result1, result2) // "Hello", "World"
})
```

**Signature**

```ts
declare const makeRuntime: <R, K, E = unknown, A = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(key: K, effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly onlyIfMissing?: boolean | undefined; }) | undefined) => Fiber.Fiber<XA, XE>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L179)

Since v2.0.0