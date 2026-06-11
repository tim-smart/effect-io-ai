Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.runtimePromise

Captures the current runtime and returns a function for running effects in
an existing `FiberHandle` as Promises.

**Details**

Each call stores the forked fiber in the handle and interrupts the previous
fiber unless `onlyIfMissing` is set. The Promise resolves with the effect's
success value or rejects with the squashed failure cause.

**Example** (Capturing a runtime for promises)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L714)

Since v3.13.0