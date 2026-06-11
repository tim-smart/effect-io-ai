Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.makeRuntimePromise

Creates a scoped run function that forks effects into a new `FiberSet` and
returns a `Promise` for each effect result.

**When to use**

Use when many scoped fibers should be tracked as a set while exposing each
result through Promise-based APIs.

**Details**

Managed fibers are removed when they complete and are interrupted when the
set's scope closes. Each Promise resolves with the effect's success value or
rejects with the squashed failure cause.

**Example** (Creating a promise runtime)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L239)

Since v3.13.0