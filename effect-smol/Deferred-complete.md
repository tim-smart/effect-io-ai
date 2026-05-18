Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.complete

Completes the `Deferred` with the supplied `Effect` without running or
memoizing it.

Awaiting fibers run the stored effect when they await, so repeated awaits can
repeat the effect. Returns `false` if the `Deferred` has already been
completed.

Use `Deferred.complete` when the effect should be evaluated once and the
resulting `Exit` memoized.

Note that `Deferred.completeWith` will be much faster, so consider using
that if you do not need to memoize the result of the specified effect.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L291)

Since v2.0.0