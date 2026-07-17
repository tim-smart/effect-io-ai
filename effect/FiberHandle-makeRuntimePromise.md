Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.makeRuntimePromise

Creates a scoped run function that forks effects into a new `FiberHandle`
and returns a `Promise` for each effect result.

**When to use**

Use when integrating a scoped `FiberHandle` runner with Promise-based APIs
and Promise rejection from squashed failures is the desired boundary.

**Details**

Each call stores the fiber in the handle and interrupts the previous fiber
unless `onlyIfMissing` is set. The returned Promise resolves with the
effect's success value or rejects with the squashed failure cause.

**Example** (Running effects as promises)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L237)

Since v3.13.0