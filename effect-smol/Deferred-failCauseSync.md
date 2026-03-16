Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.failCauseSync

Fails the `Deferred` with the specified `Cause`, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L423)

Since v2.0.0