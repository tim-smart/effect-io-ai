Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.sync

Computes a value when the returned effect is run, then attempts to complete
the `Deferred` with that value.

**When to use**

Use to lazily compute a successful value when the `Deferred` completion
effect runs.

**Details**

Fibers waiting on the `Deferred` receive the computed value only if this call
completes it. The returned effect succeeds with `true` when this call
completed the `Deferred`, or `false` if it was already completed.

**Example** (Completing a Deferred with a lazy value)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  yield* Deferred.sync(deferred, () => 42)

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const sync: { <A>(evaluate: LazyArg<A>): <E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<A>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L809)

Since v2.0.0