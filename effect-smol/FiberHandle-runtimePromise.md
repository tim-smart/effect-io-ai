Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberHandle.

The returned run function will return Promise's that will resolve when the
fiber completes.

**Example**

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()
  const runPromise = yield* FiberHandle.runtimePromise(handle)<never>()

  // Run an effect and get a promise
  const promise = runPromise(Effect.succeed("hello"))
  const result = yield* Effect.promise(() => promise)
  console.log(result) // "hello"
})
```

**Signature**

```ts
declare const runtimePromise: <A, E>(self: FiberHandle<A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: Scheduler | undefined; readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined) => Promise<XA>), never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L633)

Since v3.13.0