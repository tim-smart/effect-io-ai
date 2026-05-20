Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.dieSync

Computes a defect when the returned effect is run, then attempts to complete
the `Deferred` with that defect.

**Details**

Fibers waiting on the `Deferred` die with the computed defect only if this
call completes it. The returned effect succeeds with `true` when this call
completed the `Deferred`, or `false` if it was already completed.

**Example** (Killing a Deferred with a lazy defect)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const success = yield* Deferred.dieSync(
    deferred,
    () => new Error("Lazy error")
  )
  console.log(success) // true
})
```

**Signature**

```ts
declare const dieSync: { (evaluate: LazyArg<unknown>): <A, E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<unknown>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L558)

Since v2.0.0