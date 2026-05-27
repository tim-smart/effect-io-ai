Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.failSync

Computes an error when the returned effect is run, then attempts to complete
the `Deferred` with that error.

**When to use**

Use to lazily compute a typed failure value when the completion effect runs.

**Details**

Fibers waiting on the `Deferred` fail with the computed error only if this
call completes it. The returned effect succeeds with `true` when this call
completed the `Deferred`, or `false` if it was already completed.

**Example** (Failing a Deferred with a lazy error)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number, string>()
  const success = yield* Deferred.failSync(deferred, () => "Lazy error")
  console.log(success) // true
})
```

**Signature**

```ts
declare const failSync: { <E>(evaluate: LazyArg<E>): <A>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<E>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L479)

Since v2.0.0