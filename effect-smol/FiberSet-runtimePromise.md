Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberSet.

The returned run function will return Promise's.

**Example**

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make()
  const runPromise = yield* FiberSet.runtimePromise(set)()

  // Run effects as promises
  const promise1 = runPromise(Effect.succeed("hello"))
  const promise2 = runPromise(Effect.succeed("world"))

  const result1 = yield* Effect.promise(() => promise1)
  const result2 = yield* Effect.promise(() => promise2)

  console.log(result1, result2) // "hello" "world"
})
```

**Signature**

```ts
declare const runtimePromise: <A, E>(self: FiberSet<A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly propagateInterruption?: boolean | undefined; }) | undefined) => Promise<XA>), never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L541)

Since v3.13.0