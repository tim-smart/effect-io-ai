Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.makeRuntimePromise

Create an Effect run function that is backed by a FiberMap.
Returns a Promise instead of a Fiber for more convenient use with async/await.

**Example**

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const run = yield* FiberMap.makeRuntimePromise<never, string>()

  // Run effects and get back promises
  const promise1 = run("task1", Effect.succeed("Hello"))
  const promise2 = run("task2", Effect.succeed("World"))

  // Convert to Effect and await
  const result1 = yield* Effect.promise(() => promise1)
  const result2 = yield* Effect.promise(() => promise2)

  console.log(result1, result2) // "Hello", "World"
})
```

**Signature**

```ts
declare const makeRuntimePromise: <R, K, A = unknown, E = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(key: K, effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly onlyIfMissing?: boolean | undefined; }) | undefined) => Promise<XA>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L223)

Since v3.13.0