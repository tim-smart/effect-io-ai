Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.makeRuntimePromise

Create an Effect run function that is backed by a FiberSet.
The returned run function will return Promise's.

**Example**

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const runPromise = yield* FiberSet.makeRuntimePromise()

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
declare const makeRuntimePromise: <R = never, A = unknown, E = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly propagateInterruption?: boolean | undefined; }) | undefined) => Promise<XA>), never, R | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L206)

Since v3.13.0