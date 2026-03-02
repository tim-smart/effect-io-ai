Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberMap.
Returns a Promise instead of a Fiber for convenience.

**Example**

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()
  const runPromise = yield* FiberMap.runtimePromise(map)<never>()

  // Create promises that will be backed by fibers in the map
  const promise1 = runPromise("task1", Effect.succeed("Hello"))
  const promise2 = runPromise("task2", Effect.succeed("World"))

  // Convert promises back to Effects and await
  const result1 = yield* Effect.promise(() => promise1)
  const result2 = yield* Effect.promise(() => promise2)

  console.log(result1, result2) // "Hello", "World"
})
```

**Signature**

```ts
declare const runtimePromise: <K, A, E>(self: FiberMap<K, A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(key: K, effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }) | undefined) => Promise<XA>), never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L798)

Since v3.13.0