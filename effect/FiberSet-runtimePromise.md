Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.runtimePromise

Captures a `Runtime` and returns a Promise-based runner that forks effects
into the `FiberSet`.

**When to use**

Use when you need to bridge effects to `Promise` values while still tracking
their fibers in a `FiberSet`.

**Details**

The returned run function returns a `Promise` for each effect result.

**Example** (Running effects as promises)

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

**See**

- `runtime` for a runner that returns the forked `Fiber`

**Signature**

```ts
declare const runtimePromise: <A, E>(self: FiberSet<A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly propagateInterruption?: boolean | undefined; }) | undefined) => Promise<XA>), never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L601)

Since v3.13.0