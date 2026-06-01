Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.makeRuntimePromise

Creates a scoped run function that forks effects into a new `FiberMap` and
returns a `Promise` for each effect result.

**When to use**

Use when keyed fibers must be managed in a scoped map while exposing their
results through Promise-based APIs.

**Details**

Each call stores the fiber under the supplied key, interrupting any previous
fiber for that key unless `onlyIfMissing` is set. The returned Promise
resolves with the effect's success value or rejects with the squashed failure
cause.

**Example** (Creating a promise runtime)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L291)

Since v3.13.0