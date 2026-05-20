Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.complete

Runs the supplied `Effect` and attempts to complete the `Deferred` with its
memoized result.

**When to use**

Use `Deferred.complete` when the effect should be evaluated once and the
resulting `Exit` memoized. Use `Deferred.completeWith` when you need to store
an effect directly without memoizing its result.

**Details**

The returned effect succeeds with `true` when this call completed the
`Deferred`, or `false` if it was already completed.

**Example** (Completing a Deferred from an effect)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const completed = yield* Deferred.complete(deferred, Effect.succeed(42))
  console.log(completed) // true

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const complete: { <A, E, R>(effect: Effect<A, E, R>): (self: Deferred<A, E>) => Effect<boolean, never, R>; <A, E, R>(self: Deferred<A, E>, effect: Effect<A, E, R>): Effect<boolean, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L297)

Since v2.0.0