Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.makeRuntimePromise

Create an Effect run function that is backed by a FiberHandle.

**Example**

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const run = yield* FiberHandle.makeRuntimePromise()

  // Run effects and get promises back
  const promise = run(Effect.succeed("hello"))
  const result = yield* Effect.promise(() => promise)
  console.log(result) // "hello"
}).pipe(Effect.scoped)
```

**Signature**

```ts
declare const makeRuntimePromise: <R = never, A = unknown, E = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: Scheduler | undefined; readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined) => Promise<XA>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L195)

Since v3.13.0