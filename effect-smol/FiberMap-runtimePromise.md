Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.runtimePromise

Captures the current runtime and returns a function for running effects in
an existing `FiberMap` as Promises.

Each call stores the forked fiber under the supplied key, interrupting any
previous fiber for that key unless `onlyIfMissing` is set. The Promise
resolves with the effect's success value or rejects with the squashed failure
cause.

**Example** (Running effects as promises)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L894)

Since v3.13.0