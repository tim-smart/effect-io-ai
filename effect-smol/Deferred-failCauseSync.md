Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.failCauseSync

Computes a `Cause` when the returned effect is run, then attempts to
complete the `Deferred` with that cause.

Fibers waiting on the `Deferred` observe the computed cause only if this
call completes it. The returned effect succeeds with `true` when this call
completed the `Deferred`, or `false` if it was already completed.

**Example** (Failing a Deferred with a lazy Cause)

```ts
import { Cause, Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number, string>()
  const success = yield* Deferred.failCauseSync(
    deferred,
    () => Cause.fail("Lazy error")
  )
  console.log(success) // true
})
```

**Signature**

```ts
declare const failCauseSync: { <E>(evaluate: LazyArg<Cause.Cause<E>>): <A>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<Cause.Cause<E>>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L475)

Since v2.0.0